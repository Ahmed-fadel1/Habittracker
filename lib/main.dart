import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:habittracker/features/Login/Login_Page.dart';
import 'package:habittracker/features/MainMenu/main_menu_screen.dart';
import 'package:habittracker/features/Notes/Notes_screen.dart';
import 'package:habittracker/features/splash/splash_view.dart';
import 'package:habittracker/features/tasks/Tasks_Screen.dart';
import 'package:habittracker/features/register/SignUp_Screen.dart';
import 'package:habittracker/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Habittracker());
}

class Habittracker extends StatelessWidget {
  const Habittracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (_) => const LoginScreen(),
        '/signup': (_) => const SignUpScreen(),
        '/tasks': (_) => const TasksScreen(),
        "/mainmenu": (_) => const MainMenuScreen(),
        "/notes": (_) => const NotesScreen(),
        "/splash": (_) => const SplashScreen(),
      },
      initialRoute: '/splash',
      debugShowCheckedModeBanner: false,
    );
  }
}
