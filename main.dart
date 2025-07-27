// import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';

// import 'package:you_tube/screens/forget_pass.dart';
// import 'package:you_tube/screens/home_Page.dart';

// import 'package:you_tube/screens/library.dart';
// import 'package:you_tube/screens/login_Screen.dart';
// import 'package:you_tube/screens/notifications.dart';
// import 'package:you_tube/screens/play.dart';
// import 'package:you_tube/screens/shorts.dart';
// import 'package:you_tube/screens/signin.dart';
// import 'package:you_tube/screens/tabs.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

  
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: "/",
//       routes: {
//         "/": (context) => Login(),
//         "/SignInScreen": (context) => SignInScreen(),
//         "/short": (context) => Shorts(),
//         "/library": (context) => Library(),
//         "/Notify": (context) => Notify(),
//         "/Playing": (context) => Playing(),
//         "/forget": (context) => forget(),
//         "/tabs": (context) => Tabs(),
//         "/Login":(context)=>Login(),
//         "/home":(context)=>HomePage(),
//       },
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:you_tube/screens/Subscription.dart';
import 'package:you_tube/screens/forget_pass.dart';
import 'package:you_tube/screens/home_Page.dart';
import 'package:you_tube/screens/library.dart';
import 'package:you_tube/screens/login_Screen.dart';
import 'package:you_tube/screens/play.dart';
import 'package:you_tube/screens/shorts.dart';
import 'package:you_tube/screens/signin.dart';
import 'package:you_tube/screens/tabs.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('token');

  runApp(MyApp(token: token));
}

class MyApp extends StatelessWidget {
  final String? token;
  const MyApp({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: token == null ? '/Login_' : '/Tabs_',
      routes: {
        
        '/': (context) => Login(),
        //
        '/Sign': (context) => SignInScreen(),
        '/Tabs_': (context) => Tabs(),
        '/Forget_': (context) => forget(),
        '/Homepage_': (context) => HomePage(),
        '/Shorts': (context) => Shorts(),
        '/Subscription_': (context) => Subscribe(),
        '/Library_': (context) => Library(),
        '/Playing': (context) => Playing(),
             "/Tabs": (context) => Tabs(),
        
      },
    );
  }
}