part of 'package:cajardilla/features/my_boxes/presentation/widgets/box_widget/box_item.dart';

class BoxOptionsIcon extends StatelessWidget {
  const BoxOptionsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        right: 30,
        child: IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {},
        ));
  }
}
