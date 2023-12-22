part of 'package:cajardilla/features/home/presentation/pages/home_page.dart';

class MyActivityRegister extends StatelessWidget {
  const MyActivityRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TileActivityRegister(date: DateTime.now()),
        TileActivityRegister(date: DateTime.now()),
      ]),
    );
  }
}
