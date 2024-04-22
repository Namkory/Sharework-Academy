import 'package:flutter/material.dart';

class Banner2 extends StatelessWidget {
  const Banner2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // padding: EdgeInsets.only(right: 300),
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/about3.png.webp'),
              fit: BoxFit.contain,
            )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Learner outcomes on courses you \nwill take",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(children: [
                Icon(Icons.check, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                    'Techniques to engage effectively with vulnerable \nchildren and young people.')
              ]),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Icon(Icons.check, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                    'Join millions of people from around the world \nlearning together.')
              ]),
              SizedBox(
                height: 20,
              ),
              Row(children: [
                Icon(Icons.check, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                    'Join millions of people from around the world \nlearning together. Online learning is as easy and \nnatural.')
              ]),
            ],
          )
        ],
      ),
    );
  }
}
