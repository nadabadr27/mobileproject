import 'package:flutter/material.dart';
import 'package:moviee/widgets/colored_circle.dart';
import 'package:moviee/widgets/drawer_item.dart';
import 'package:sizer/sizer.dart';
import 'package:moviee/utils/constants.dart';
import 'package:moviee/utils/file_manager.dart' as file;

class DrawerScreen extends StatelessWidget {
  final Function(Color) colorChanged;
  DrawerScreen({required this.colorChanged});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kPrimaryColor,
        child: Padding(
          padding:
              EdgeInsets.only(top: 10.h, left: 6.w, right: 6.w, bottom: 5.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DrawerItem(
                title: kDrawerTitleFirstText,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColoredCircle(
                      color: kMainGreenColor,
                      onPressed: (color) {
                        file.saveTheme(color: "green");
                        colorChanged(color);
                      },
                    ),

              SizedBox(
                height: 5.h,
              ),

            ],
          ),
        ),
      ]),))
    );
  }
}
