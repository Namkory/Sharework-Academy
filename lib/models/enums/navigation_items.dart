import 'package:flutter/material.dart';

enum NavigationItems {
  users,
  panel,
  pieChart,
  menu,
  mobilefriendly,
  badge,
  girlsharp,
  tiktok,
  kayaking,
  rocket,
  subtitles,
}

extension NavigationItemsExtensions on NavigationItems {
  IconData get icon {
    switch (this) {
      case NavigationItems.menu:
        return Icons.menu;
      case NavigationItems.panel:
        return Icons.bar_chart;
      case NavigationItems.pieChart:
        return Icons.pie_chart;
      case NavigationItems.users:
        return Icons.person;
      case NavigationItems.mobilefriendly:
        return Icons.mobile_friendly;
      case NavigationItems.badge:
        return Icons.badge;
      case NavigationItems.girlsharp:
        return Icons.girl_sharp;
      case NavigationItems.tiktok:
        return Icons.tiktok_sharp;
      case NavigationItems.kayaking:
        return Icons.kayaking;
      case NavigationItems.rocket:
        return Icons.rocket;
      case NavigationItems.subtitles:
        return Icons.subtitles;
      default:
        return Icons.person;
    }
  }
}
