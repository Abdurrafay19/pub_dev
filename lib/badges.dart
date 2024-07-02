import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pub_dev/custom_button.dart';

class Badges extends StatefulWidget {
  const Badges({super.key});

  @override
  State<Badges> createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: badges.Badge(
                  position: badges.BadgePosition.topEnd(top: -10, end: -12),
                  showBadge: true,
                  ignorePointer: false,
                  onTap: (){},
                  badgeContent: const Icon(FontAwesomeIcons.accessibleIcon),
                  badgeAnimation: const badges.BadgeAnimation.rotation(
                    animationDuration: const Duration(microseconds: 1),
                    colorChangeAnimationDuration: Duration(microseconds: 1),
                    loopAnimation: false,
                  ),
                  badgeStyle: badges.BadgeStyle(
                    shape: badges.BadgeShape.circle,
                    badgeColor: Colors.purple,
                    padding: const EdgeInsets.all(5),
                    borderRadius: BorderRadius.circular(4),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                    borderGradient: const badges.BadgeGradient.linear(
                        colors: [Colors.red, Colors.deepOrange]),
                    badgeGradient: const badges.BadgeGradient.linear(
                      colors: [Colors.red, Colors.pinkAccent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,),
                  ),
                )
              ),

              
             CustomButton(title: 'Login', color: Colors.purple, ),
             CustomButton(title: 'Signup',color: Colors.teal,height: 90,),


            ],
          ),
        ),
      ),
    );
  }
}
