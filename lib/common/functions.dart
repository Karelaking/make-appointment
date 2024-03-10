import 'package:flutter/cupertino.dart';

pushPageTo(context, to) => Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) {
          return to;
        },
      ),
    );

popPage(context) => Navigator.pop(context);

pushReplacePageTo(context, to) => Navigator.pushReplacement(
      context,
      CupertinoPageRoute(
        builder: (context) {
          return to;
        },
      ),
    );