
import 'package:architecture_template_v2/product/utility/constants/project_radius.dart';
import 'package:flutter/material.dart';

// Radius is 20
final class NormalButton extends StatelessWidget {
  // ignore: public_member_api_docs
  const NormalButton({required this.title, required this.onPressed, super.key});
  // ignore: public_member_api_docs
  final String title;
  // ignore: public_member_api_docs
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      /// todo: 
      onTap: () {},
      radius: ProjectRadius.normal.value,
      child: const Text('title'),
    );
  }
}
