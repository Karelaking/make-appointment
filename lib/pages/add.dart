import 'package:flutter/material.dart';
import 'package:myapp/common/functions.dart';
import 'package:myapp/constants/icons.dart';
import 'package:myapp/constants/size.dart';
import 'package:myapp/widgets/text.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: AppIconConstant().arrowBack(context),
          onPressed: () {
            popPage(context);
          },
        ),
        title: const Headding(
            text: 'Add Appointment', fontSize: 20, fontWeight: AppSize.fw7),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: AppIconConstant().share(context)),
          IconButton(onPressed: () {}, icon: AppIconConstant().menu(context)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: 'Name of person',
                  label: const Text('Name'),
                  prefixIcon: AppIconConstant().person(context)),
            ),
          )
        ]),
      ),
    );
  }
}
