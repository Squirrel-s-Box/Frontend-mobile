part of 'navigation_home_widget.dart';

class _FloatingActionBottom extends StatelessWidget {
  const _FloatingActionBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedPageProvider = Provider.of<SelectedPageProvider>(context);

    return FloatingActionButton.extended(
      backgroundColor: selectedPageProvider.selectedPage == "myboxes"
          ? AppColors.midOrange
          : AppColors.whiteBackground,
      shape: CircleBorder(
          side: BorderSide(
              color: selectedPageProvider.selectedPage == "myboxes"
                  ? AppColors.ultraLowOrange
                  : AppColors.midOrange)),
      onPressed: () {
        selectedPageProvider.changeSelectedPage("myboxes");
      },
      elevation: 0,
      extendedPadding: const EdgeInsets.symmetric(horizontal: 3),
      label: Container(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
                offset: const Offset(0, 10),
                child: Icon(
                  Icons.folder_open,
                  size: 30,
                  color: selectedPageProvider.selectedPage == "myboxes"
                      ? AppColors.darkBlue
                      : AppColors.midOrange,
                )),
            Transform.translate(
              offset: const Offset(0, 27),
              child: AutoSizeText("My boxes",
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: selectedPageProvider.selectedPage == "myboxes"
                        ? AppColors.darkBlue
                        : AppColors.midOrange,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
