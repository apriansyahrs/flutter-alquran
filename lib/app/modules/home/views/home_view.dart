import 'package:alquarnku/app/contants/style.dart';
import 'package:alquarnku/app/data/models/surah.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quran App',
          style: Theme.of(context).textTheme.headline6,
        ),
        // centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: secondaryColorLight,
            ),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Text(
                  "Assalamualaikum",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 8,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffDF98FA),
                      Color(0xff9055FF),
                    ],
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: Container(
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: -30,
                            right: -32,
                            child: Container(
                              width: 206,
                              height: 126,
                              child: Image.asset(
                                "assets/images/Quran.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.menu_book_rounded,
                                      color: whiteColor,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Terakhir Dibaca",
                                      style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: medium,
                                          color: whiteColor),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Al-Fatihah",
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: semiBold,
                                      color: whiteColor),
                                ),
                                Text(
                                  "Juz 1 | Ayat 5",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14, color: whiteColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              TabBar(
                indicatorColor:
                    Get.isDarkMode ? Color(0xffA44AFF) : primaryColorLight,
                labelColor: Get.isDarkMode ? whiteColor : primaryColorLight,
                unselectedLabelColor:
                    Get.isDarkMode ? grayColor : secondaryColorLight,
                labelStyle: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: semiBold,
                ),
                unselectedLabelStyle: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: medium,
                ),
                tabs: [
                  Tab(
                    text: 'Surah',
                  ),
                  Tab(
                    text: "Juz",
                  ),
                  Tab(
                    text: "Bookmark",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    FutureBuilder<List<Surah>>(
                      future: controller.getAllSurah(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(
                              color: Get.isDarkMode
                                  ? whiteColor
                                  : primaryColorLight,
                            ),
                          );
                        }
                        if (!snapshot.hasData) {
                          return Center(
                            child: Text("Tidak ada data yang ditemukan"),
                          );
                        }
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              Surah surah = snapshot.data![index];
                              return ListTile(
                                onTap: () {},
                                leading: Container(
                                  height: 36,
                                  width: 36,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/list.png"),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "${surah.number}",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: medium,
                                        color: Get.isDarkMode
                                            ? whiteColor
                                            : primaryColorDark,
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text(
                                  "${surah.name?.transliteration?.id}",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: medium,
                                    color: Get.isDarkMode
                                        ? whiteColor
                                        : primaryColorDark,
                                  ),
                                ),
                                subtitle: Text(
                                  "${surah.numberOfVerses} Ayat | ${surah.revelation?.id ?? 'error..'}",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Get.isDarkMode
                                        ? grayColor
                                        : secondaryColorLight,
                                    fontWeight: regular,
                                  ),
                                ),
                                trailing: Text(
                                  "${surah.name?.short}",
                                  style: GoogleFonts.amiri(
                                    fontSize: 20,
                                    fontWeight: bold,
                                    color: Get.isDarkMode
                                        ? Color(0xffA44AFF)
                                        : primaryColorLight,
                                  ),
                                ),
                              );
                            });
                      },
                    ),
                    Center(
                      child: Text(
                        "Page2",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: medium,
                          color: primaryColorLight,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Page3",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: medium,
                          color: primaryColorLight,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.isDarkMode
              ? Get.changeTheme(themeLight)
              : Get.changeTheme(themeDark);
        },
        child: Icon(
          Get.isDarkMode ? Icons.light_mode : Icons.dark_mode,
          color: Get.isDarkMode ? primaryColorDark : whiteColor,
        ),
      ),
    );
  }
}
