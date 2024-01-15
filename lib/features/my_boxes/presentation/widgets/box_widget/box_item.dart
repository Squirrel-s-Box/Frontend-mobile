import 'package:cajardilla/features/general_widgets/atomic_widgets/atomic_texts.dart';
import 'package:cajardilla/features/my_boxes/presentation/widgets/box_widget/box_container.dart';
import 'package:flutter/material.dart';

part 'package:cajardilla/features/my_boxes/presentation/widgets/box_widget/box_texts.dart';
part 'package:cajardilla/features/my_boxes/presentation/widgets/box_widget/box_options_icon.dart';

class BoxItem extends StatelessWidget {
  const BoxItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 120,
        width: 300,
        child: Stack(
          children: [
            BoxContainer(),
            BoxTexts(),
            BoxOptionsIcon(),
          ],
        ),
      ),
    );
  }
}
