import 'package:cajardilla/configs/theme/colors.dart';
import 'package:flutter/material.dart';

part 'package:cajardilla/features/my_boxes/presentation/widgets/box_widget/box_painter.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 300,
      color: AppColors.cofeeCapuchino,
      child: CustomPaint(
        painter: BoxPainter(),
      ),
    );
  }
}
