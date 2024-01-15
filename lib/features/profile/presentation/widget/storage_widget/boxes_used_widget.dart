import 'package:cajardilla/configs/helper/responsive.dart';
import 'package:cajardilla/features/general_widgets/atomic_widgets/atomic_texts.dart';
import 'package:cajardilla/features/profile/presentation/widget/storage_widget/boxes_used_storage.dart';
import 'package:flutter/material.dart';

class BoxesUsedWidget extends StatelessWidget {
  const BoxesUsedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Column(
      children: [
        const PrincipalTitle(title: "Storage"),
        SizedBox(height: responsive.hp(2)),
        BoxesUsedStorage(boxesTotal: 6, boxesUsed: 3),
      ],
    );
  }
}
