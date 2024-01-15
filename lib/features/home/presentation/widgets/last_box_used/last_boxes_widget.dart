import 'package:cajardilla/configs/helper/responsive.dart';
import 'package:cajardilla/features/general_widgets/atomic_widgets/atomic_texts.dart';
import 'package:cajardilla/features/my_boxes/presentation/widgets/grid_view_boxes.dart';
import 'package:flutter/material.dart';

class LastBoxesWidget extends StatelessWidget {
  const LastBoxesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const PrincipalTitle(title: "Last boxes used"),
        GridViewBoxes(),
      ],
    );
  }
}
