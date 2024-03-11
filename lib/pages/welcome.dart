import 'package:flutter/material.dart';
import 'package:myapp/common/functions.dart';
import 'package:myapp/constants/icons.dart';
import 'package:myapp/constants/size.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/widgets/text.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: AppIconConstant().calanderWelcome(context),
              ),
              const Headding(
                  text: 'Schedule Your Appointments',
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
              const Text('Your advanced appointment scheduler'),
            ],
          ),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: AppIconConstant().start(context),
              ),
              const Headding(
                  text: 'Get Started for Free',
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
              const Text('No credit card, No commitments'),
            ],
          ),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: AppIconConstant().cloude(context),
              ),
              const Headding(
                  text: 'Cloude Based Service',
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
              const Text('Secure and Reliable'),
            ],
          ),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: AppIconConstant().thumbsUp(context),
              ),
              const Headding(
                  text: 'Easy to Use',
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
              const Text('Start running your business in minutes'),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      child: const Text(
                        'Get Started Here',
                        style: TextStyle(fontSize: AppSize.f20),
                      ),
                      onPressed: () {
                        pushReplacePageTo(context, const Home());
                      },
                    ))
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
