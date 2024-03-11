import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:myapp/common/functions.dart';
import 'package:myapp/constants/icons.dart';
import 'package:myapp/constants/size.dart';
import 'package:myapp/widgets/text.dart';

class UserFeedBack extends StatelessWidget {
   UserFeedBack({super.key});

  final TextEditingController _feedbackController = TextEditingController();

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
          title: const Headding(
              text: 'Kindly share your feedback',
              fontSize: 17,
              fontWeight: AppSize.fw7),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "How would you rate your experience with 'Make Appointments'",
                    style: TextStyle(fontSize: 25, fontWeight: AppSize.fw6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) =>
                        AppIconConstant().star(context),
                    onRatingUpdate: (rating) {
                      log(rating.toString());
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: _feedbackController,
                    decoration: InputDecoration(
                    
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        filled: true,
                        fillColor: Theme.of(context).canvasColor),
                    
                    maxLines:5,
                  ),
                ),
                ElevatedButton(onPressed: () {}, child: const Text('Submmit'))
              ],
            ),
          ),
        ));
  }
}
