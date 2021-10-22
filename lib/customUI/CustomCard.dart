import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: SvgPicture.asset(
                  'assets/groups.svg',
                  color: Colors.white,
                  height: 37,
                  width: 37,
                ),
                backgroundColor: Colors.blueGrey,
              ),
              title: Text(
                "Dev Stack",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              trailing: Text("18:04"),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Hi devstack",
                    style: TextStyle(
                      fontSize: 13.0,
                    ),
                  )
                ],
              )),
          Padding(
            padding: EdgeInsets.only(right: 20.0, left: 80.0),
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
