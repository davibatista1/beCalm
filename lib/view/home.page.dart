import 'package:becalm/utils/colors.dart';
import 'package:becalm/utils/phrase_day.dart';
import 'package:becalm/widgets/menu.widget.dart';
import 'package:becalm/widgets/objective.widget.dart';
import 'package:becalm/widgets/phrase_day.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;

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
              Center(
                child: Text(
                  "Objetivos",
                  style: TextStyle(color: Colors.green.shade900),
                ),
              ),
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected1 = true;
                  });
                },
                child: ObjectiveWidget(
                  isSelected: selected1,
                  icon: const Icon(Icons.water_drop),
                  description: "Beber 3 copos de água",
                  color: Colors.blue.shade100,
                ),
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected2 = true;
                  });
                },
                child: ObjectiveWidget(
                  isSelected: selected2,
                  icon: const Icon(Icons.menu_book),
                  description: "Ler 3 páginas de um livro",
                  color: Colors.yellow.shade100,
                ),
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected3 = true;
                  });
                },
                child: ObjectiveWidget(
                  isSelected: selected3,
                  icon: const Icon(Icons.run_circle),
                  description: "Praticar 15 minutos de exercícios",
                  color: MyColors.green,
                ),
              ),
               const SizedBox(height: 24),
              if (selected1 == true && selected2 == true && selected3 == true)
                Text(
                  "PARABÉNS!\nObejtivos diários concluídos, volte amanhã para novos objetivos",
                  style: TextStyle(color: Colors.green.shade900),
                  textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
