import 'package:becalm/utils/colors.dart';
import 'package:becalm/view/my_account.page.dart';
import 'package:becalm/view/play_list.page.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyColors.green,
      child: ListView(
        children: [
          const SizedBox(height: 16),
          const Text(
            "Menu",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Minha conta"),
            onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyAccountPage(),
                  ),
                )),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.music_note),
            title: const Text("Acessar Playlists"),
            onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlayListPage(),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
