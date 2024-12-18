import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets Apps"),
      ),
      backgroundColor: const Color.fromARGB(255, 199, 207, 209),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final MenuItem menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final MenuItem menuItem;
  const _CustomListTile({required this.menuItem});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      onTap: () => context.push(menuItem.link),
      leading: Icon(menuItem.icon, color: colors.primary),
      subtitle: Text(menuItem.subtitle),
      title: Text(menuItem.title),
    );
  }
}
