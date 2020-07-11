import 'package:flutter/material.dart';

enum AppCardStyle { Normal, Outlined }

class AppCard extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final bool enabled;
  final Widget child;
  final double width;
  final double height;
  final AppCardStyle style;

  const AppCard({
    Key key,
    this.margin,
    this.padding,
    this.enabled,
    this.child,
    this.width,
    this.height,
    this.style = AppCardStyle.Normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: style == AppCardStyle.Normal
            ? Theme.of(context).backgroundColor
            : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Theme.of(context).backgroundColor,
        ),
        boxShadow: [
          if (style == AppCardStyle.Normal)
            BoxShadow(
              blurRadius: 3,
              offset: Offset(0, 2),
              color: Colors.black.withOpacity(.1),
            ),
        ],
      ),
      child: child,
    );
  }
}
