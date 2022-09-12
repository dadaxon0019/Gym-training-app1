import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/models/music_widget_model.dart';
import 'package:flutter_application_1/screens/musicPage.dart';
import 'package:flutter_application_1/navigation/navigator_widget.dart';
import 'package:flutter_application_1/auth/on_bording_screens/on_bording_screen.dart';
import 'package:flutter_application_1/auth/registr_page/registr_page.dart';
import 'package:flutter_application_1/navigation/widget_tree.dart';
import 'package:flutter_application_1/auth//firebase_options.dart';
import 'package:flutter_application_1/training%20card/beginner_videos.dart/video_player_widget.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/on_bording_screen': ((context) => OnBordingScreen1()),
        '/auth': (context) => LoginPage(),
        '/navigator_page': (context) => NavigatorWidget(),
      },
      initialRoute: '/navigator_page',
    );
  }
}
