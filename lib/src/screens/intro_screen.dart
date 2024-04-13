import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sneaker_store/src/build_context_extension.dart';
import 'package:sneaker_store/src/constants/spaces.dart';
import 'package:sneaker_store/src/screens/home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                'assets/logo.svg',
                height: 100,
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                'Just Do It',
                style: context.textTheme.displayLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              space8,
              Text(
                'Premium quality sneakers made with 🖤',
                style: context.textTheme.bodyMedium!
                    .copyWith(color: context.colorScheme.secondary),
              ),
              space24,
              space24,
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 48, vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      backgroundColor: context.colorScheme.onSurface,
                      foregroundColor: context.colorScheme.surface),
                  child: const Text(
                    'Shop Now',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
