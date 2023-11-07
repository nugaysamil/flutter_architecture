// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

// Adapt your view onyl tablet and phone
final class AdapMobileView extends StatelessWidget {
  const AdapMobileView({
    Key? key,
    required this.phone,
    required this.tablet,
  }) : super(key: key);

  
  
  //Define your custom widget for mobile and tablet
  final Widget phone;
  final Widget tablet;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;

    return tablet;
  }
}
