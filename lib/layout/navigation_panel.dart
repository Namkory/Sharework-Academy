import 'package:fintech_dashboard_clone/models/enums/navigation_items.dart';
import 'package:fintech_dashboard_clone/responsive.dart';
import 'package:fintech_dashboard_clone/widgets/controller.dart';
import 'package:fintech_dashboard_clone/widgets/navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationPanel extends StatefulWidget {
  final Axis axis;
  const NavigationPanel({Key? key, required this.axis}) : super(key: key);

  @override
  State<NavigationPanel> createState() => _NavigationPanelState();
}

class _NavigationPanelState extends State<NavigationPanel> {
  final MyController controller = Get.put(MyController());
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 80),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: Responsive.isDesktop(context)
          ? const EdgeInsets.symmetric(horizontal: 30, vertical: 20)
          : const EdgeInsets.all(10),
      child: widget.axis == Axis.vertical
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Image.asset("assets/logo.png", height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: NavigationItems.values
                      .map(
                        (e) => NavigationButton(
                          onPressed: () {
                            setState(() {
                              // activeTab = e.index;
                              controller.myVariable.value = e.index;
                              controller
                                  .updateVariable(controller.myVariable.value);
                            });
                            panigationn(controller.myVariable.value, context);
                          },
                          icon: e.icon,
                          // isActive: e.index == controller.myVariable.value,
                          isActive: e.index == controller.myVariable.value,
                        ),
                      )
                      .toList(),
                ),
                Container()
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/logo.png", height: 20),
                Row(
                  children: NavigationItems.values
                      .map(
                        (e) => NavigationButton(
                          onPressed: () {
                            setState(() {
                              activeTab = e.index;
                            });
                          },
                          icon: e.icon,
                          isActive: e.index == activeTab,
                        ),
                      )
                      .toList(),
                ),
                Container()
              ],
            ),
    );
  }
}

void panigationn(value, BuildContext context) {
  switch (value) {
    case 0:
      Navigator.of(context).pushNamed('/user-page');
      break;
    case 1:
      Navigator.of(context).pushNamed('/lecturer-page');
      break;
    case 2:
      Navigator.of(context).pushNamed('/instructorschedule-page');
      break;
    case 3:
      Navigator.of(context).pushNamed('/manager-page');
      break;
    case 4:
      Navigator.of(context).pushNamed('/test-page');
      break;
    case 5:
      Navigator.of(context).pushNamed('/testmark-page');
      break;
    case 6:
      Navigator.of(context).pushNamed('/certificate-page');
      break;
    case 7:
      Navigator.of(context).pushNamed('/course-page');
      break;
    case 8:
      Navigator.of(context).pushNamed('/educationprogram-page');
      break;
    case 9:
      Navigator.of(context).pushNamed('/class-page');
      break;
    case 10:
      Navigator.of(context).pushNamed('/openschedule-page');
      break;

    default:
      Navigator.of(context).pushNamed('/admin');
  }
}
