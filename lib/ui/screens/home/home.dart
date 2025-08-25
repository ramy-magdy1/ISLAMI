import 'package:flutter/material.dart';
import 'package:islami/ui/screens/home/tabs/ahadeth/ahadeth.dart';
import 'package:islami/ui/screens/home/tabs/azkar/azkar.dart';

import 'package:islami/ui/screens/home/tabs/quran/quran_tab.dart';
import 'package:islami/ui/screens/home/tabs/radio/radio.dart';
import 'package:islami/ui/screens/home/tabs/sebha/sebha.dart';
import 'package:islami/ui/utils/app_assets.dart';
import 'package:islami/ui/utils/app_colors.dart';
import 'package:islami/ui/utils/app_text_styles.dart';

class Home extends StatefulWidget {
  static const routeName = 'home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    AhadethTab(),
    SebhaTAb(),
    RadioTab(),
    AzkarTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[selectedIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      iconSize: 25,

      selectedLabelStyle: AppTextStyles.whiteBold12,
      unselectedItemColor: AppColors.black,
      selectedItemColor: AppColors.white,
      selectedIconTheme: IconThemeData(),
      onTap: (index) {
        selectedIndex = index;

        setState(() {});
      },
      currentIndex: selectedIndex,
      items: [
        BottomNavigationBarItem(
          icon: buildBottomNavigationBarIcon(
            AppAssets.icQuran,
            selectedIndex == 0,
          ),
          label: "Quran",
        ),
        BottomNavigationBarItem(
          icon: buildBottomNavigationBarIcon(
            AppAssets.icAhadeth,
            selectedIndex == 1,
          ),
          label: "Ahadeth",
        ),
        BottomNavigationBarItem(
          icon: buildBottomNavigationBarIcon(
            AppAssets.icSebha,
            selectedIndex == 2,
          ),
          label: "Sebha",
        ),
        BottomNavigationBarItem(
          icon: buildBottomNavigationBarIcon(
            AppAssets.icRadio,
            selectedIndex == 3,
          ),
          label: "Radio",
        ),
        BottomNavigationBarItem(
          icon: buildBottomNavigationBarIcon(
            AppAssets.icAzkar,
            selectedIndex == 4,
          ),
          label: "Azkar",
        ),
      ],
    );
  }

  buildBottomNavigationBarIcon(String icon, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.blackWithOpacity60 : Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),

      child: ImageIcon(AssetImage(icon)),
    );
  }
}
