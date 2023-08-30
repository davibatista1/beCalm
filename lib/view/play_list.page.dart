// ignore_for_file: deprecated_member_use

import 'package:becalm/utils/colors.dart';
import 'package:becalm/utils/key_values_names.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlayListPage extends StatefulWidget {
  const PlayListPage({super.key});

  @override
  State<PlayListPage> createState() => _PlayListPageState();
}

class _PlayListPageState extends State<PlayListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        foregroundColor: Colors.green.shade900,
        title: const Text("Playlist"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Escolha a Playlist que deseja ouvir:",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 24),
              PlayListOptionWidget(
                name: 'Sons da Natureza',
                url: playList1,
              ),
              SizedBox(height: 24),
              PlayListOptionWidget(
                name: 'Meditação e Relaxamento',
                url: playList2,
              ),
              SizedBox(height: 24),
              PlayListOptionWidget(
                name: 'Relaxamento Profundo',
                url: playList3,
              ),
              SizedBox(height: 24),
              PlayListOptionWidget(
                name: 'Relaxamento Instrumental',
                url: playList4,
              ),
              SizedBox(height: 24),
              PlayListOptionWidget(
                name: 'Músicas para Meditar',
                url: playList5,
              ),
              SizedBox(height: 24),
              PlayListOptionWidget(
                name: 'Relaxamento Celta',
                url: playList6,
              ),
              SizedBox(height: 24),
              PlayListOptionWidget(
                name: 'Meditação Guiada',
                url: playList7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayListOptionWidget extends StatelessWidget {
  const PlayListOptionWidget(
      {super.key, required this.name, required this.url});

  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 42,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(8),
          color: MyColors.green),
      child: GestureDetector(
        onTap: () async {
          await launch(url);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
