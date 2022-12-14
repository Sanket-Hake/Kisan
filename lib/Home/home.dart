import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:kisan/BazaarBhav/baazarbhav.dart';
import 'package:kisan/Disease_detection/detection.dart';
import 'package:kisan/Drawer/Drawer.dart';
import 'package:kisan/Home/Slider_Home.dart';
import 'package:kisan/News/news.dart';
import 'package:kisan/labours/options.dart';
import '../Drawer/MY_order.dart';
import '../krishi_salla/crop_list.dart';
import '../Weather/WeatherInfo.dart';
import '../krishi_yojana/yojana_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 30,
        title: const Center(
          child: Text("Tech Cultivators"),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: FadeInDownBig(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                slider(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WeatherPage()));
                          },
                          child: column(
                              "assets/images/weather.png", "Weather", context)),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewsPage(),
                            ),
                          );
                        },
                        child: column(
                            "assets/images/news-paper.png", "News", context),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CropList()));
                          },
                          child: column("assets/images/Krushi_Salla.jpg",
                              "advice", context)),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        child: column("assets/images/investing.png",
                            "Market price", context),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BaazarBhav(),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const YojanaList(),
                            ),
                          );
                        },
                        child: column("assets/images/handshake.png",
                            "  Agricultural plan", context),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Options(),
                              ),
                            );
                          },
                          child: column(
                              "assets/images/workers.png", "Labor", context)),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Detection(),
                      ),
                    );
                  },
                  child: Container(
                      height: 130,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                        // gradient: LinearGradient(
                        //     begin: Alignment.centerLeft,
                        //     end: Alignment.centerRight,
                        //     colors: [Colors.purple, Colors.blue])
                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            // Container(

                            Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                child: column("assets/images/Crop Care.png",
                                    "Crop Care", context)),

                            Expanded(
                              child: Text(
                                "Dignose and treat disease",
                                maxLines: 2,
                                softWrap: true,
                                style: CustomTextStyle.textFormFieldSemiBold
                                    .copyWith(
                                        fontSize: 18, color: Colors.green),
                              ),
                            ),
                          ])),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      flex: 2,
                      child: MaterialButton(
                        height: 50,
                        minWidth: 175,
                        onPressed: () {
                          Navigator.pushNamed(context, "/Buy_home");
                        },
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.green),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          "Buy",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: MaterialButton(
                        height: 50,
                        minWidth: 175,
                        onPressed: () {
                          Navigator.pushNamed(context, "/Shop_Registartion");
                        },
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          "Sell",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget column(String image, String text, BuildContext context) {
  return Container(
    child: Column(
      children: [
        Container(
          margin:
              const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
          width: MediaQuery.of(context).size.width / 4,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.green, fontWeight: FontWeight.w600, fontSize: 17),
        ),
      ],
    ),
  );
}
