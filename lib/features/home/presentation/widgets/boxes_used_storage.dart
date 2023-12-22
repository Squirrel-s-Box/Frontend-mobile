part of 'package:cajardilla/features/home/presentation/pages/home_page.dart';

class BoxesUsedStorage extends StatelessWidget {
  int boxesUsed = 0;
  int boxesTotal = 0;

  BoxesUsedStorage(
      {super.key, required this.boxesUsed, required this.boxesTotal});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Row(children: [
        Icon(Icons.inventory, color: AppColors.darkBlue),
        SizedBox(width: 10),
        SecondaryTitle(title: "Boxes used")
      ]),
      const SizedBox(height: 10),
      FractionalBoxesUsed(boxesUsed: boxesUsed, boxesTotal: boxesTotal),
      const SizedBox(height: 10),
      TinyText(title: "$boxesUsed of $boxesTotal boxes used")
    ]);
  }
}
