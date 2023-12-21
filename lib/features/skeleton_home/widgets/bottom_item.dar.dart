import 'package:auto_size_text/auto_size_text.dart';
import 'package:cajardilla/configs/theme/colors.dart';
import 'package:cajardilla/features/skeleton_home/models/bottom_item_model.dart';
import 'package:cajardilla/features/skeleton_home/providers/selected_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomItem extends StatelessWidget {
  final BottomItemModel item;

  const BottomItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final selectedPageProvider = Provider.of<SelectedPageProvider>(context);

    return InkWell(
      onTap: () {
        selectedPageProvider.changeSelectedPage(item.path);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: Offset(item.offsetX, item.offsetY),
              child: Icon(item.icon,
                  color: selectedPageProvider.selectedPage == item.path
                      ? AppColors.darkBlue
                      : AppColors.midOrange),
            ),
            Transform.translate(
              offset: Offset(item.offsetX, item.offsetY),
              child: AutoSizeText(
                item.title,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: selectedPageProvider.selectedPage == item.path
                      ? AppColors.darkBlue
                      : AppColors.midOrange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
