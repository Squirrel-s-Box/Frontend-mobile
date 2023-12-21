import 'package:flutter/material.dart';
import 'package:cajardilla/features/skeleton_home/providers/exports_pages_skeleton.dart';

class SelectedPageProvider extends ChangeNotifier{

  String _selectedPage = 'home';
  String get selectedPage => _selectedPage;

  Widget get currentPage {
    switch (_selectedPage) {
      case 'home':
        return const HomePage();
      case 'favorites':
        return const FavoritesPage();
      case 'downloads':
        return const DownloadPage();
      case 'profile':
        return const ProfilePage();
      case 'myboxes':
        return const MyBoxesPage();
      default:
        return const HomePage();
    }
  }

  void changeSelectedPage(String path) {
    _selectedPage = path;
    notifyListeners();
  }
}