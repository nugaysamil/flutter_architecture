// ignore_for_file: public_member_api_docs, sort_constructors_first, always_put_required_named_parameters_first
import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

// make a adaptive view for all platform
final class AdaptAllView extends StatelessWidget {
  const AdaptAllView({
    Key? key,
    required this.phone,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  final Widget phone;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) return phone;
    if (ResponsiveBreakpoints.of(context).isTablet) return tablet;

    if (ResponsiveBreakpoints.of(context).isDesktop) return desktop;

    return desktop;
  }
}
