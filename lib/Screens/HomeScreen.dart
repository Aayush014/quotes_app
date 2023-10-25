import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quotes_app/Utils/Globel.dart';
import 'package:quotes_app/Utils/List.dart';
import 'package:quotes_app/Utils/QuoteList.dart';

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
        backgroundColor: const Color(0xffEBF3E8),
        appBar: AppBar(
          backgroundColor: const Color(0xffEBF3E8),
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
                  Text("Today's Quote", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(
              flex: 15,
              child: Stack(children: [
                Container(
                  width: 380,
                  height: 450,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('Assets/Images/background_quote2.jpg'),
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
                          alignment: Alignment.center,
                          child: Center(
                            child: Column(
                              children: [
                                const SizedBox(height: 25,),
                                Text(
                                  '${quotesModel.quote}',
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                const SizedBox(height: 25,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '~ ${quotesModel.author}',
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    const SizedBox(width: 20,),
                                  ],
                                ),
                              ],
                            ),
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
                              width: 30,
                            ),
                            Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.share_rounded,
                              color: Colors.white,
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
                ),
              ]),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: const Icon(Icons.replay_rounded, size: 50,color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      int i = Random().nextInt(quotesList.length - 1);
                      quotesModel = QuotesModel().fromJson(quotesList[i]);
                    });
                  },
                ),
                InkWell(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: const Icon(Icons.image, size: 50,color: Colors.white),
                  ),
                  onTap: () {
                    setState(() {
                      Image.asset('$imgList');
                    });
                  },
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
class QuotesModel {
  String? quote;
  String? author;
  QuotesModel({this.quote, this.author});

  QuotesModel fromJson(Map m1) {
    quote = m1['quote'];
    author = m1['author'];
    QuotesModel quotesModel = QuotesModel(author: author, quote: quote);
    return quotesModel;
  }
}

