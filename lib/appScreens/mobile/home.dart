import 'package:ehi_system/appDatabase/supabase.dart';
import 'package:ehi_system/appThemes/colors.dart';
import 'package:ehi_system/appThemes/texts.dart';
import 'package:ehi_system/appWidgets/mobile/login.dart';
import 'package:flutter/material.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 100, child: Image.asset(Assets.logo)),
        Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Text(
            AppStrings.greetings.welcome,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(azul60),
              ),
              child: Text(
                'Cadastro',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MobileFormsLogin(),
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SupaBaseAuth()),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
