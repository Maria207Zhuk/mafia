import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mafia/main.dart';
import 'package:mafia/role.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  "Народ засинає...\nПрокидаються депутати...",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 36,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: yellowColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
                    ),
                    onPressed: () {
                      GoRouter.of(context).push("/offline");
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Text(
                        "Нова гра",
                        style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
