import 'package:cajardilla/configs/theme/colors.dart';
import 'package:cajardilla/features/general_widgets/atomic_widgets/principal_input_search.dart';
import 'package:flutter/material.dart';

class TopBarSearcher extends StatelessWidget {
  const TopBarSearcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          const Expanded(child: PrincipalInputSearch()),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
            color: AppColors.darkBlue,
          ),
        ],
      ),
    );
  }
}
