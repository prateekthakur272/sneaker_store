import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shoes_repository/shoes_repository.dart';
import 'package:sneaker_store/src/build_context_extension.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenSize.width * .8,
      decoration: BoxDecoration(
          color: context.colorScheme.surface,
          borderRadius: BorderRadius.circular(12)),
      // padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  shoe.imageUrl,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              shoe.name,
              style: context.textTheme.headlineLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              shoe.descriptio,
              maxLines: 1,
              style: context.textTheme.bodyMedium!
                  .copyWith(color: context.colorScheme.secondary),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'INR.${shoe.price}',
                  style: context.textTheme.displaySmall!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                iconSize: 32,
                padding: const EdgeInsets.all(16),
                onPressed: () {
                  Cart.shoes.add(shoe);
                  log(Cart.shoes.toString());
                },
                icon: const Icon(Icons.add),
                style: IconButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(12))),
                    backgroundColor: context.colorScheme.onSurface,
                    foregroundColor: context.colorScheme.surface),
              ),
            ],
          )
        ],
      ),
    );
  }
}
