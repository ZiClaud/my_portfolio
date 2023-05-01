import 'package:flutter/material.dart';
import 'package:my_portfolio/main.dart';
import 'package:my_portfolio/theme/colors.dart';
import 'package:my_portfolio/theme/icons.dart';
import 'package:my_portfolio/theme/typography.dart';
import 'package:my_portfolio/utils/media_query.dart';
import 'package:my_portfolio/widgets/section_containers.dart';
import 'package:my_portfolio/widgets/widgets.dart';

Widget getHomePage() {
  return sectionContainerColumn(_homePageWidgets());
}

List<Widget> _homePageWidgets() {
  return [
    _headerWidget(),
    _titleAndJobWidget(),
    _arrowDownWidget(),
  ];
}

Widget _headerWidget() {
  return SizedBox(
    width: double.infinity,
    height: 48 * fem,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 48 * fem,
          height: 48 * fem,
          child: logoImage(),
        ),
        const Spacer(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            clickableText(
                text: "SKILLS", onPressed: () => {
                  // TODO: ScrollToSkillsPage()
            }),
            SizedBox(width: 32 * fem),
            clickableText(
                text: "WORKS", onPressed: () => {
                  // TODO: ScrollToWorkPage()
            }),
            SizedBox(width: 32 * fem),
            clickableText(
                text: "ABOUT", onPressed: () => {
                  // TODO: ScrollToAboutMePage()
            }),
            SizedBox(width: 32 * fem),
            clickableText(
                text: "CONTACT", onPressed: () => {
                  // TODO: ScrollToContactPage()
            }),
          ],
        ),
      ],
    ),
  );
}

Widget _titleAndJobWidget() {
  return Container(
    margin: EdgeInsets.fromLTRB(0 * fem, 249 * fem, 0 * fem, 249 * fem),
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: h1Bold(color: neutral1Color),
        children: [
          TextSpan(
            text: 'Claudio Di Maio\n',
            style: h1Bold(color: neutral1Color),
          ),
          TextSpan(
            text: 'Software Developer',
            style: h1Light(color: neutral2Color),
          ),
        ],
      ),
    ),
  );
}

Widget _arrowDownWidget() {
  return SizedBox(
    width: 20 * fem,
    height: 10 * fem,
    child: arrowDownImg,
  );
}
