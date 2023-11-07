// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:widgets/src/core/dialog_base.dart';

// user question answer
final class QuestionAnswer {
  QuestionAnswer({required this.response});

  // answer text
  final String response;
}

// show a dialog for sucess
final class QuestionDialog extends StatefulWidget {
  /// constructor for dialog
  const QuestionDialog({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  // show the dialog for success
  // this will always true
  static Future<QuestionAnswer?> show(
      {required String title, required BuildContext context}) {
    return DialogBase.show<QuestionAnswer>(
      context: context,
      builder: (context) => QuestionDialog(title: title),
    );
  }

  @override
  State<QuestionDialog> createState() => _QuestionDialogState();
}

class _QuestionDialogState extends State<QuestionDialog> {
  String _response = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text('${widget.title}'),
      content: TextField(
        onChanged: (value) => _response = value,
      ),
      actions: [
        IconButton(
          onPressed: () {
            if (_response.isEmpty) Navigator.of(context).pop(null);
            Navigator.of(context).pop(QuestionAnswer(response: _response));
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
