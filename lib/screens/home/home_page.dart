import 'package:first_app/model/user_list.dart';
import 'package:first_app/widgets/alert_box.dart';
import 'package:first_app/widgets/list_tile_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Home"),
          actions: [
            IconButton(
              onPressed: () {
                showAlertBox(
                  context,
                  "Logout",
                  "Do you want to Logout?",
                );
              },
              icon: const Icon(
                Icons.power_settings_new_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        body: ListView.separated(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTileWidget(
              imageName: userList[index].logoImage,
              text: userList[index].name,
              borderRadius: index % 2 == 0 ? 10 : 50,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 15,
          ),
        ));
  }
}
