import 'package:flutter/material.dart';
import 'package:myapp/common/functions.dart';
import 'package:myapp/constants/icons.dart';
import 'package:myapp/pages/account.dart';
import 'package:myapp/pages/add.dart';
import 'package:myapp/pages/settings.dart';
import 'package:myapp/widgets/appointment_list_tile.dart';
import 'package:myapp/widgets/text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.person_rounded),
          onPressed: () {
            pushPageTo(context, const Account());
          },
        ),
        title: const Headding(
            text: 'Make Appointment',
            fontSize: 20,
            fontWeight: FontWeight.w700),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_on_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: () {
              pushPageTo(context, const Settings());
            },
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            AppointmentTile(
              title: 'The Master',
              subTitle:
                  'Subtitle, this the subtitle only for the testing purpos, i want to make it long so that ia can test it. i think it is porfect for the testing',
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: AppIconConstant().add(context),
        onPressed: () {
          pushPageTo(context, const Add());
        },
      ),
    );
  }
}
