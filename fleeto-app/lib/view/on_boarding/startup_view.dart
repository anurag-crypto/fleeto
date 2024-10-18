import 'package:flutter/material.dart';
import 'package:fleeto/view/login/welcome_view.dart';
import 'package:fleeto/view/main_tabview/main_tabview.dart';

import '../../common/globs.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StarupViewState();
}

class _StarupViewState extends State<StartupView> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {

      await Future.delayed( const Duration(seconds: 3) );
      welcomePage();
  }
  void welcomePage(){

    if (Globs.udValueBool(Globs.userLogin)) {
       Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MainTabView()));
    }else{
       Navigator.push(
        context, MaterialPageRoute(builder: (context) => const WelcomeView()));
    }
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          //Background image
          Image.asset(
            "assets/img/splash_bg.png",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),

          // Centered app logo
          Center(
            child: Image.asset(
              "assets/img/app_logo.png",
              width: media.width * 0.65,  // Slightly reduced width for better fit
              height: media.width * 0.65, // Same as width to maintain aspect ratio
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),

      // body: Stack(
      //   alignment: Alignment.center,
      //   children: [
      //     // Image.asset(
      //     //   "assets/img/splash_bg.png",
      //     //   width: media.width,
      //     //   height: media.height,
      //     //   fit: BoxFit.cover,
      //     // ),
      //     SizedBox(
      //       height: media.width * 0.5,
      //     ),
      //     Image.asset(
      //       "assets/img/app_logo.png",
      //        width: media.width ,
      //       height: media.width ,
      //       //fit: BoxFit.contain,
      //     ),
      //   ],
      // ),
    );
  }
}
