import 'package:flutter/widgets.dart';
import 'package:flutter_responsive/core/Global_Utils/Styles.dart';

class Layers extends StatelessWidget {
  final WidgetBuilder mobileLlayout, tabletLayout, desktoplayout;

  const Layers({
    Key? key,
    required this.desktoplayout,
    required this.mobileLlayout,
    required this.tabletLayout,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth < 800) {
        return mobileLlayout(context);
      } else if (Constraints.maxWidth < SizeConfig.desktop) {
        return tabletLayout(context);
      }
      return desktoplayout(context);
    });
  }
}
