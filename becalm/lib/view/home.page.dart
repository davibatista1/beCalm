import 'package:becalm/utils/colors.dart';
import 'package:becalm/utils/phrase_day.dart';
import 'package:becalm/widgets/menu.widget.dart';
import 'package:becalm/widgets/phrase_day.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          child: Image.asset(
            "assets/logo_quiet.png",
            width: 150,
          ),
        ),
        backgroundColor: MyColors.green,
        foregroundColor: Colors.green.shade900,
      ),
      drawer: const DrawerMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              PhraseDay(
                phrases: phrase,
              ),
              const SizedBox(height: 48),
              const Text("Objetivos"),
            ],
          ),
        ),
      ),
    );
  }
}
