import 'package:cajardilla/configs/helper/responsive.dart';
import 'package:cajardilla/features/general_widgets/atomic_widgets/atomic_texts.dart';
import 'package:cajardilla/features/home/presentation/widgets/my_activity/tile_activity_register.dart';
import 'package:flutter/material.dart';

part 'package:cajardilla/features/home/presentation/widgets/my_activity/my_activity_register.dart';

class MyActivityWidget extends StatelessWidget {
  const MyActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PrincipalTitle(title: "My Activity"),
        SizedBox(height: responsive.hp(2)),
        const MyActivityRegister(),
      ],
    );
  }
}
