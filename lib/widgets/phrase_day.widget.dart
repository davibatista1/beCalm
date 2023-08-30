import 'dart:math';

import 'package:becalm/utils/colors.dart';
import 'package:becalm/utils/phrase_day.dart';
import 'package:flutter/material.dart';

class PhraseDay extends StatefulWidget {
  const PhraseDay({Key? key, required this.phrases}) : super(key: key);

  @override
  State<PhraseDay> createState() => _PhraseDayState();
  final List<OptionPhase> phrases;
}

class _PhraseDayState extends State<PhraseDay> {
  var random = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: Colors.green,
          ),
          borderRadius: BorderRadius.circular(8),
          color: MyColors.green),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Frase do dia",
                  style: TextStyle(color: Colors.green.shade900)),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.phrases
                      .elementAt(random.nextInt(widget.phrases.length))
                      .name,
                  //phrase.elementAt(lista[random.nextInt(lista.length)]),
                  style: TextStyle(color: Colors.green.shade900, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
