import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:myapp/constants/size.dart';
import 'package:myapp/widgets/text.dart';

class AppointmentTile extends StatelessWidget {
  const AppointmentTile(
      {super.key,
      required this.title,
      required this.icons,
      this.subTitle = '',
      this.fontSizeTitle = 15,
      this.fontSizeSubTitle = 16, this.onTap});
  final String title;
  final String subTitle;
  final Icon icons;
  final double fontSizeTitle;
  final double fontSizeSubTitle;
  final Callback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Headding(
          text: title, fontSize: fontSizeTitle, fontWeight: AppSize.fw7),
      subtitle: Text(subTitle, style: TextStyle(fontSize: fontSizeSubTitle)),
      leading: icons,
      onTap: onTap,
    );
  }
}
