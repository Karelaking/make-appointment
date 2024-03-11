import 'package:flutter/material.dart';
import 'package:myapp/common/functions.dart';
import 'package:myapp/constants/icons.dart';
import 'package:myapp/constants/size.dart';
import 'package:myapp/widgets/input.dart';
import 'package:myapp/widgets/text.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (_picked != null && _picked != selectedDate) {
      setState(() {
        selectedDate = _picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Headding(
                  text: 'General Information',
                  fontSize: 20,
                  fontWeight: AppSize.fw7),
              const Divider(),
              Card(
                child: Column(
                  children: [
                    Input(
                        hintTitle: 'Person name',
                        label: 'Person name',
                        icon: AppIconConstant().person(context)),
                    Input(
                        hintTitle: 'Address of metting',
                        label: 'Address of metting',
                        icon: AppIconConstant().location(context)),
                    Input(
                      hintTitle: 'Description',
                      label: 'Description',
                      icon: AppIconConstant().location(context),
                    ),
                    Input(
                        hintTitle: 'Email',
                        label: 'Email',
                        icon: AppIconConstant().email(context)),
                    Input(
                        hintTitle: 'Phone',
                        label: 'Phone',
                        icon: AppIconConstant().phone(context)),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {
                          _selectDate(context);
                        },
                        icon: AppIconConstant().calander(context),
                        label: SizedBox(
                          width: 90,
                          child: Text(
                            '$selectedDate',
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis),
                          ),
                        )),
                    ElevatedButton.icon(
                        onPressed: () {
                          _selectDate(context);
                        },
                        icon: AppIconConstant().dateTime(context),
                        label: SizedBox(
                          width: 90,
                          child: Text(
                            '$selectedDate',
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis),
                          ),
                        ))
                  ],
                ),
              ),
              const Headding(
                  text: 'Additional Information',
                  fontSize: 20,
                  fontWeight: AppSize.fw7),
              const Divider(),
              const Card(
                child: Column(
                  children: [],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          style: const ButtonStyle(),
                          onPressed: () {},
                          child: const Text('Add Appointment'))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
