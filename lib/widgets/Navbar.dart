import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbar();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavbar();
      } else {
        return MobileNavbar();
      }
    });
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        // constraints: const BoxConstraints(maxWidth: 1200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Sharework Academy",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30)),
            Row(
              children: [
                // const Text("Home", style: TextStyle(color: Colors.white)),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  height: 30,
                  // color: Colors.pink,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child:
                      const Text("Home", style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  width: 30,
                ),
                // const Text("Courses", style: TextStyle(color: Colors.white)),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/courses');
                  },
                  height: 30,
                  // color: Colors.pink,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: const Text("Courses",
                      style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  width: 30,
                ),
                // const Text("About Us", style: TextStyle(color: Colors.white)),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/detail-infor');
                  },
                  height: 30,
                  // color: Colors.pink,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: const Text("About Us",
                      style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  width: 30,
                ),
                // const Text("Contact", style: TextStyle(color: Colors.white)),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/course-detail');
                  },
                  height: 30,
                  // color: Colors.pink,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: const Text("Contact",
                      style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  width: 30,
                ),
                // const Text("Open schedule", style: TextStyle(color: Colors.white)),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/open-schedule');
                  },
                  height: 30,
                  // color: Colors.pink,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: const Text("Open Schedule",
                      style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  height: 45,
                  color: Colors.pink,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: const Text("Log in",
                      style: TextStyle(color: Colors.white)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
          children: [
            Text("Sharework Academy",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Home", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    width: 30,
                  ),
                  Text("Courses", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    width: 30,
                  ),
                  Text("About Us", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    width: 30,
                  ),
                  Text("Contact", style: TextStyle(color: Colors.white)),
                  SizedBox(
                    width: 30,
                  ),
                  MaterialButton(
                    onPressed: () {
                      print("Press");
                    },
                    color: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child:
                        Text("Log in", style: TextStyle(color: Colors.white)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
