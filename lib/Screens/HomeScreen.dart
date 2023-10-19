import 'package:flutter/material.dart';
import 'package:quotes_app/Utils/Globel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff000F19),
        appBar: AppBar(
          backgroundColor: const Color(0xff000F19),
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            size: 35,
          ),
          title: const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('Assets/Images/aayush.jpg'),
                maxRadius: 28,
              ),
              SizedBox(
                width: 20,
              ),
              Text("Aayush Patel"),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 90,
              // color: Colors.grey,
              child: const Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Text("Today's Quote", style: TextStyle(fontSize: 30)),
                ],
              ),
            ),
            Expanded(
              flex: 15,
              child: Stack(
                children: [
                  Container(
                  width: 380,
                  height: 450,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('Assets/Images/green.jpg'),
                          fit: BoxFit.cover)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: Container(
                          height: 260,
                          alignment:   Alignment.center,
                          child: Text(
                            '${quotesModel.quote}',

                            style: const TextStyle(
                                color: Colors.black, fontSize: 30),
                          ),
                        ),
                      ),
                      // const Spacer(),
                      Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.grey,
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.black,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.share_rounded,
                              color: Colors.black,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),]
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                     ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
