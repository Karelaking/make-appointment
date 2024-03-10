import 'package:flutter/material.dart';
import 'package:myapp/common/functions.dart';
import 'package:myapp/constants/icons.dart';
import 'package:myapp/constants/size.dart';
import 'package:myapp/widgets/settings_list_tile.dart';
import 'package:myapp/widgets/text.dart';


class Settings extends StatelessWidget {
  const Settings({super.key});

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
        title:
            const Headding(text: 'Settings', fontSize: 24, fontWeight: AppSize.fw7),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Headding(
                  text: 'General',
                  fontSize: 24,
                  fontWeight: AppSize.fw7,
                ),
              ),
              Card(
                child: Column(
                  children: [
                    SettingsListTile(
                      icons: AppIconConstant().switchTheme(context),
                      title: 'Switch Theme',
                    ),
                    const Divider(),
                    SettingsListTile(
                      icons: AppIconConstant().language(context),
                      title: 'Languages',
                    ),
                    const Divider(),
                    SettingsListTile(
                      icons: AppIconConstant().clear(context),
                      title: 'Clear Data',
                    ),
                    const Divider(),
                    SettingsListTile(
                      icons: AppIconConstant().feedBack(context),
                      title: 'Feedback',
                    ),
                    const Divider(),
                    SettingsListTile(
                      icons: AppIconConstant().about(context),
                      title: 'About',
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Headding(
                  text: 'Accounts',
                  fontSize: 24,
                  fontWeight: AppSize.fw7,
                ),
              ),
              Card(
                child: Column(
                  children: [
                    SettingsListTile(
                      icons: AppIconConstant().switchTheme(context),
                      title: 'Create Account',
                    ),
                    const Divider(),
                    SettingsListTile(
                      icons: AppIconConstant().login(context),
                      title: 'Login',
                    ),
                    const Divider(),
                    SettingsListTile(
                      icons: AppIconConstant().logOut(context),
                      title: 'Logout',
                    ),
                    const Divider(),
                    SettingsListTile(
                      icons: AppIconConstant().deleteAccount(context),
                      title: 'Delete Account',
                    ),
                  ],
                ),
              ),
              const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Headding(
                text: 'Lagel',
                fontSize: 24,
                fontWeight: AppSize.fw7,
              ),
            ),
             Card(
               child: Column(
                 children: [
                   SettingsListTile(
                          icons: AppIconConstant().termsAndConditiion(context),
                          title: 'Terms and Condition',
                        ),
                        const Divider(),
                        SettingsListTile(
                          icons: AppIconConstant().dataPrivacy(context),
                          title: 'Data privacy',
                        ),
                        const Divider(),
                        SettingsListTile(
                          icons: AppIconConstant().qAndA(context),
                          title: 'Q&A',
                        ),
                 ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
