part of 'package:cajardilla/features/my_boxes/presentation/widgets/box_widget/box_item.dart';

class BoxTexts extends StatelessWidget {
  const BoxTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            NormalText(
              title: "Box 1",
              isBold: true,
            ),
            NormalText(
              title: "by BlazorHater",
              isBold: true,
            ),

          ],
        ),
      ),
    );
  }
}
