import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  List<Widget> pageChildren(String title, BuildContext context) {
    if (title == 'Row') {
      return [
        Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: Container(
            // width: 1200,
            // height: 500,
            // color: Colors.red,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Learning platform',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'Build skills with courses, certificates and degresss online from \nworld-class universities and companies',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/courses');
                      },
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      color: Colors.blue, // Màu nền của nút
                      minWidth: 150, // Chiều rộng tối thiểu của nút
                      height: 50, // Chiều cao của nút
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 30.0),
                        child: Text('Get Courses',
                            style:
                                TextStyle(color: Colors.white, fontSize: 17.0)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 100),
                Container(
                  height: 300,
                  width: 550,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/banner3.png'),
                    fit: BoxFit.cover,
                  )),
                  // child: Text("aaaaaaaaaaaa"),
                )
              ],
            ),
          ),
        ),
      ];
    } else {
      return [
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Container(
            // color: Colors.red,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Learning platform',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40.0,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        'Build skills with courses, certificates and degresss online from \nworld-class universities and companies',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      color: Colors.blue, // Màu nền của nút
                      minWidth: 150, // Chiều rộng tối thiểu của nút
                      height: 50, // Chiều cao của nút
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 40.0),
                        child: Text('Get Courses',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 100),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/banner3.png'),
                    fit: BoxFit.cover,
                  )),
                )
              ],
            ),
          ),
        ),
      ];
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren('Row', context),
        );
      } else {
        return Column(
          children: pageChildren('Column', context),
        );
      }
    });
  }
}
