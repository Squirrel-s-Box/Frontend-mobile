import 'package:auto_size_text/auto_size_text.dart';
import 'package:cajardilla/configs/theme/colors.dart';
import 'package:cajardilla/features/skeleton_home/models/bottom_item_model.dart';
import 'package:cajardilla/features/skeleton_home/providers/selected_page_provider.dart';
import 'package:cajardilla/features/skeleton_home/widgets/bottom_item.dar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

part 'bottom_bar.dart';

part 'floating_action_bottom.dart';

class NavigationHomeWidget extends StatelessWidget {
  const NavigationHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedPageProvider = Provider.of<SelectedPageProvider>(context);
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(bottom: 30),
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        width: double.infinity,
        height: double.infinity,
        child: selectedPageProvider.currentPage,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const _FloatingActionBottom(),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
