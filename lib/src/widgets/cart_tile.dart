import 'package:flutter/material.dart';
import 'package:shoes_repository/shoes_repository.dart';
import 'package:sneaker_store/src/build_context_extension.dart';
import 'package:sneaker_store/src/constants/spaces.dart';

class CartTile extends StatelessWidget {
  final Shoe shoe;
  final VoidCallback onDelete;
  const CartTile({super.key, required this.shoe, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 160,
      decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Image.asset(shoe.imageUrl),
          space16,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shoe.name,
                  style: context.textTheme.headlineLarge,
                ),
                Text('INR ${shoe.price}')
              ],
            ),
          ),
          IconButton(
              style: IconButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  foregroundColor: context.colorScheme.surface,
                  backgroundColor: context.colorScheme.onSurface),
              iconSize: 32,
              onPressed: onDelete,
              icon: const Icon(Icons.delete)),
          space8,
        ],
      ),
    );
  }
}
