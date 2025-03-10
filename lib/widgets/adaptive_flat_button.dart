import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
          )
        : TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor,
              ),
            ),
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
          );
  }
}
