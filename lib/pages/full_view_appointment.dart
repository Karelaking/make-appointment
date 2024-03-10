
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:myapp/common/functions.dart';
import 'package:myapp/constants/icons.dart';
import 'package:myapp/constants/size.dart';
import 'package:myapp/widgets/appointment.dart';
import 'package:myapp/widgets/text.dart';

class FullViewAppointment extends StatefulWidget {
  const FullViewAppointment(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  State<FullViewAppointment> createState() => _FullViewAppointmentState();
}

class _FullViewAppointmentState extends State<FullViewAppointment>
    with SingleTickerProviderStateMixin {

  final Widget img = CachedNetworkImage(
    alignment: Alignment.center,
    imageUrl: "https://source.unsplash.com/featured?technology",
    fit: BoxFit.fill,
    placeholder: (context, url) => const CircularProgressIndicator(),
    errorWidget: (context, url, error) => const Icon(Icons.error),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              popPage(context);
            },
          ),
          title: Headding(
              text: widget.title, fontSize: 20, fontWeight: AppSize.fw7),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              img,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Headding(
                    text: widget.title, fontSize: 30, fontWeight: AppSize.fw7),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Headding(
                    text: widget.subTitle,
                    fontSize: 13,
                    fontWeight: AppSize.fw3),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Headding(
                          text: 'Metting Information',
                          fontSize: 20,
                          fontWeight: AppSize.fw7),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            children: [
                              AppointmentTile(
                                icons: AppIconConstant().location(context),
                                title: 'Meeting Location',
                                subTitle:
                                    '231/A Girija Namgar P.A.C Line Kanpur , Uttar Pradesh',
                              ),
                              const Divider(),
                              AppointmentTile(
                                icons: AppIconConstant().dateTime(context),
                                title: 'Meeting date and time  ',
                                subTitle: '02/05/2024  02:40 AM',
                              ),
                              const Divider(),
                              AppointmentTile(
                                icons: AppIconConstant().reason(context),
                                title: 'Meeting for',
                                subTitle: 'Very Important Topic',
                              ),
                              const Divider(),
                              AppointmentTile(
                                icons: AppIconConstant().phone(context),
                                title: 'Phone',
                                subTitle: '+91 9956309219',
                              ),
                              const Divider(),
                              AppointmentTile(
                                  icons: AppIconConstant().email(context),
                                  title: 'Email',
                                  subTitle: 'karelaking277@gmail.com',
                                 ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Headding(
                          text: 'Metting Documents',
                          fontSize: 20,
                          fontWeight: AppSize.fw7),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Chip(
                            label: Text('Files'),
                          ),
                          Chip(
                            label: Text('Photos'),
                          ),
                          Chip(
                            label: Text('Links'),
                          ),
                          Chip(
                            label: Text('Videos'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
