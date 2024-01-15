import 'package:cajardilla/configs/helper/responsive.dart';
import 'package:cajardilla/configs/theme/colors.dart';
import 'package:cajardilla/features/general_widgets/atomic_widgets/atomic_texts.dart';
import 'package:cajardilla/features/general_widgets/molecule_widgets/top_bar_searcher.dart';
import 'package:cajardilla/features/home/presentation/widgets/my_activity/my_activty_widget.dart';
import 'package:cajardilla/features/profile/presentation/widget/storage_widget/fractional_boxes_used.dart';
import 'package:cajardilla/features/home/presentation/widgets/last_box_used/last_boxes_widget.dart';
import 'package:cajardilla/features/home/presentation/widgets/my_activity/tile_activity_register.dart';
import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: responsive.hp(2)),
          const TopBarSearcher(),
          SizedBox(height: responsive.hp(2)),
          LastBoxesWidget(),
          SizedBox(height: responsive.hp(2)),
          MyActivityWidget(),
        ]),
      ),
    );
  }
}
