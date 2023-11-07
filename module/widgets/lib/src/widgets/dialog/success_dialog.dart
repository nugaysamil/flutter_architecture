// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets/src/core/dialog_base.dart';

// show a dialog for sucess
final class SuccessDialog extends StatelessWidget {
  /// constructor for dialog
  const SuccessDialog({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  // show the dialog for success
  // this will always true
  static Future<bool> show(
      {required String title, required BuildContext context}) async {
    await DialogBase.show<bool>(
      context: context,
      builder: (context) => SuccessDialog(title: title),
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text('$title'),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
