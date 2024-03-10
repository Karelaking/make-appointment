import 'package:flutter/material.dart';
import 'package:myapp/constants/icons.dart';
import 'package:myapp/constants/size.dart';
import 'package:myapp/widgets/text.dart';


class SettingsListTile extends StatelessWidget {
  const SettingsListTile(
      {super.key,
      required this.title,
      required this.icons,
      this.fontSizeTitle = 25,});
  final String title;
  final Icon icons;
  final double fontSizeTitle;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Headding(
          text: title, fontSize: fontSizeTitle, fontWeight: AppSize.fw7),
      trailing: AppIconConstant().arrowForward(context),
      leading: icons,
    );
  }
}
