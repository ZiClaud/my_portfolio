import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/colors.dart';
import 'package:my_portfolio/atomic/atoms/typography.dart';
import 'package:my_portfolio/utils/navigation.dart';

class SwitchLanguageBt extends StatefulWidget {
  const SwitchLanguageBt({Key? key}) : super(key: key);

  @override
  State<SwitchLanguageBt> createState() => _SwitchLanguageBtState();
}

class _SwitchLanguageBtState extends State<SwitchLanguageBt> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (context.locale == const Locale('en', 'US')) {
          context
              .setLocale(const Locale('it', 'IT'))
              .then((_) => navigateToHome(context));
        } else {
          context
              .setLocale(const Locale('en', 'US'))
              .then((_) => navigateToHome(context));
        }
      },
      icon: Text(
        context.locale == const Locale('it', 'IT') ? "IT" : "EN",
        style: h5Bold(
          context,
          color: neutral1Color,
        ),
      ),
    );
  }
}
