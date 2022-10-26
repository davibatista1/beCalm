import 'package:becalm/services/auth_service.dart';
import 'package:becalm/widgets/auth_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),
      ],
      child: const BeCalm(),
    ),
  );
}

class BeCalm extends StatelessWidget {
  const BeCalm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Quiet',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const AuthCheck(),
    );
  }
}
