import 'package:flutter/material.dart';
import 'package:my_portfolio/atomic/atoms/responsive.dart';

/// Responsive box
class ResponsiveBox extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;

  const ResponsiveBox({
    Key? key,
    required this.child,
    this.width,
    this.height,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: (width != null && ResponsiveWidget.isDesktop(context))
          ? width
          : ResponsiveWidget.getWidth(context) * 0.9,
      height: (height != null && ResponsiveWidget.isDesktop(context))
          ? height
          : null,
      child: child,
    );
  }
}
