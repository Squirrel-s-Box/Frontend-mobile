import 'package:cajardilla/configs/helper/responsive.dart';
import 'package:cajardilla/configs/theme/colors.dart';
import 'package:cajardilla/features/general_widgets/atomic_widgets/atomic_texts.dart';
import 'package:cajardilla/features/general_widgets/molecule_widgets/top_bar_searcher.dart';
import 'package:cajardilla/features/home/presentation/widgets/fractional_boxes_used.dart';
import 'package:cajardilla/features/home/presentation/widgets/tile_activity_register.dart';
import 'package:flutter/material.dart';

part 'package:cajardilla/features/home/presentation/widgets/boxes_used_storage.dart';

part 'package:cajardilla/features/home/presentation/widgets/my_activity_register.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: responsive.hp(2)),
      const TopBarSearcher(),
      SizedBox(height: responsive.hp(2)),
      const PrincipalTitle(title: "Last boxes used"),
      SizedBox(height: responsive.hp(2)),
      Container(
        color: AppColors.midOrange,
        width: double.infinity,
        height: responsive.hp(20),
      ),
      SizedBox(height: responsive.hp(2)),
      const PrincipalTitle(title: "Storage"),
      SizedBox(height: responsive.hp(2)),
      BoxesUsedStorage(boxesTotal: 6, boxesUsed: 3),
      SizedBox(height: responsive.hp(2)),
      const PrincipalTitle(title: "My Activity"),
      SizedBox(height: responsive.hp(2)),
      const MyActivityRegister(),
    ]);
  }
}
