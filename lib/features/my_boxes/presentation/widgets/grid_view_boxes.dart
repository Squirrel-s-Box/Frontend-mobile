import 'package:cajardilla/features/my_boxes/presentation/widgets/box_widget/box_item.dart';
import 'package:flutter/material.dart';

class GridViewBoxes extends StatelessWidget {
  const GridViewBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        // Esto asegura al menos una columna
        childAspectRatio: 2.5,
      ),
      itemCount: 3,
      // Reemplaza tusDatos con tu lista de elementos
      itemBuilder: (context, index) {
        return BoxItem(); // Construye tu elemento de la lista
      },
    );
  }
}
