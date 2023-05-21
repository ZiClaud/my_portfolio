import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:my_portfolio/responsive/responsive.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:url_launcher/url_launcher.dart';

/// Default padding for mobile and desktop
EdgeInsets defaultPadding(BuildContext context) {
  if (ResponsiveWidget.isMobile(context)) {
    return const EdgeInsets.symmetric(horizontal: 0);
  }
  return const EdgeInsets.symmetric(horizontal: 112);
}

BorderRadius getContainerRadius() {
  return BorderRadius.circular(30);
}

BoxDecoration getContainerDecorationBorder() {
  return BoxDecoration(
    borderRadius: getContainerRadius(),
    border: Border.all(color: neutral1Color, width: 2),
  );
}

Future<void> launchMyUrl(String urlString) async {
  Uri url = Uri.parse(urlString);
  if (!await launchUrl(url)) {
    print('Could not launch $url');
    throw Exception('Could not launch $url');
  }
}

void sendEmail(String recipient) async {
  final mailtoLink = Mailto(
    to: [recipient],
//    cc: ['cc1@example.com', 'cc2@example.com'],
//    subject: 'mailto example subject',
//    body: 'mailto example body',
  );
  Uri url = Uri(path: '$mailtoLink');

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    print('Could not launch $mailtoLink');
    throw Exception('Could not launch $mailtoLink');
  }

  // Launch the mail app with the email details
  await launchUrl(url);
}

/*
Future<void> launchInBrowser(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    print("Could not launch $url");
    throw Exception('Could not launch $url');
  }
}
*/
