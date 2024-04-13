import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shoes_repository/shoes_repository.dart';
import 'package:sneaker_store/src/build_context_extension.dart';
import 'package:sneaker_store/src/constants/spaces.dart';
import 'package:sneaker_store/src/widgets/shoe_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                space24,
                SvgPicture.asset(
                  width: 200,
                  'assets/logo.svg',
                  // ignore: deprecated_member_use
                  color: Colors.white,
                ),
                space24,
                Divider(
                  color: Colors.grey.shade700,
                ),
                ListTile(
                  onTap: () {},
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  title: Text(
                    'Home',
                    style: context.textTheme.bodyMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(Icons.home),
                ),
                ListTile(
                  onTap: () {},
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  title: Text(
                    'My Bag',
                    style: context.textTheme.bodyMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(Icons.shopping_bag),
                ),
                ListTile(
                  onTap: () {},
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  title: Text(
                    'About',
                    style: context.textTheme.bodyMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(Icons.error),
                ),
                const Spacer(),
                ListTile(
                  onTap: () {},
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  title: Text(
                    'Log Out',
                    style: context.textTheme.bodyMedium!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  leading: const Icon(Icons.logout),
                )
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: context.colorScheme.background,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [ShopView(), CartView()],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GNav(
            mainAxisAlignment: MainAxisAlignment.center,
            tabBorderRadius: 16,
            tabActiveBorder: Border.all(color: context.colorScheme.background),
            tabBackgroundColor: context.colorScheme.surface,
            color: context.colorScheme.secondary,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.shopping_bag,
                text: 'My Bag',
              )
            ]),
      ),
    );
  }
}

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  fillColor: context.colorScheme.surface,
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: context.colorScheme.onSurface,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.filter_alt_outlined,
                      color: context.colorScheme.surface,
                    ),
                  ),
                  hintText: 'Find your sneakers'),
            ),
            space16,
            Text(
              'Everyone flies... Some fly longer than others',
              style: context.textTheme.bodyMedium!.copyWith(color: Colors.grey),
            ),
            space8,
            Row(
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: context.textTheme.headlineLarge,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      textStyle:
                          const TextStyle(decoration: TextDecoration.underline),
                      foregroundColor: context.colorScheme.tertiary),
                  child: const Text('See All'),
                )
              ],
            ),
            space8,
            Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => space16,
                    itemCount: shoes.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        ShoeTile(shoe: shoes[index])))
          ],
        ),
      ),
    );
  }
}

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
