import 'package:apptide/screens/upload_content.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  List<String> images = [
    "assets/Image_2.png",
    "assets/Image_2.png",
    "assets/Image_2.png",
  ];
  List<String> top = [
    'assets/t_1.png',
    'assets/t_2.png',
    'assets/t_3.png',
  ];
  List<String> test_1 = [
    'Oxygen',
    'Bag',
    'Oxygen',
  ];
  List<String> test_2 = [
    'Apollo',
    'Gucci Gang',
    'Apollo',
  ];
  List<String> pop = [
    'assets/t_4.png',
    'assets/t_5.png',
    'assets/t_6.png',
  ];
  _imageCarousel() {
    final List<String> listImages = images;
    return Column(
      children: <Widget>[
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            //enlargeCenterPage: true,
            viewportFraction: 0.8,
            aspectRatio: 1 / 3,
            height: 120,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: listImages
              .map(
                (item) => Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              item,
                            ),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      //height: 400,
                      // child: Image.asset(
                      //   item,
                      //   fit: BoxFit.contain,
                      //   width: MediaQuery.of(context).size.width / 1,
                      // ),
                    ),
                    Positioned(
                        right: 0,
                        top: 30,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 30, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Hottest Talents',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                'Weekly',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              Text(
                                'new talents',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              )
              .toList(),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: listImages.map((urlOfItem) {
        //     int index = listImages.indexOf(urlOfItem);
        //     return Container(
        //       width: 10.0,
        //       height: 10.0,
        //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        //       decoration: BoxDecoration(
        //           shape: BoxShape.circle,
        //           color: _currentIndex == index ? Colors.black : Colors.grey),
        //     );
        //   }).toList(),
        // )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => UploadContent()));
                          },
                          child: Container(
                              height: 30,
                              width: 30,
                              child: Image(
                                  image: AssetImage('assets/upload.PNG'))),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(0)),
                //height: MediaQuery.of(context).size.height / 2.2,
                child: _imageCarousel(),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Talents',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          'See all',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image(image: AssetImage('assets/arrow_2.png'))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 170,
                child: Expanded(
                    child: MediaQuery.removePadding(
                  context: context,
                  removeRight: true,
                  removeBottom: true,
                  removeLeft: true,
                  removeTop: true,
                  child: ListView.builder(
                      // padding: EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      itemCount: top.length,
                      itemBuilder: (context, index) {
                        return Container(
                          //height: 00,
                          width: MediaQuery.of(context).size.width / 1.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(top[index]),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white.withOpacity(0.5)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          test_1[index],
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                            backgroundColor: Colors.black,
                                            radius: 9,
                                            child: Icon(Icons.play_arrow,
                                                size: 9, color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                )),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Text(
                          'See all',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image(image: AssetImage('assets/arrow_2.png'))
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 170,
                child: Expanded(
                    child: MediaQuery.removePadding(
                  context: context,
                  removeRight: true,
                  removeBottom: true,
                  removeLeft: true,
                  removeTop: true,
                  child: ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.horizontal,
                      itemCount: pop.length,
                      itemBuilder: (context, index) {
                        return Container(
                          //height: 00,
                          width: MediaQuery.of(context).size.width / 1.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(pop[index]),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white.withOpacity(0.5)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          test_2[index],
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                            backgroundColor: Colors.black,
                                            radius: 9,
                                            child: Icon(Icons.play_arrow,
                                                size: 9, color: Colors.white))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                )),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          // margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.fast_rewind),
                          CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.3),
                              child: Icon(
                                Icons.pause,
                                size: 18,
                                color: Colors.white,
                              ),
                              backgroundImage:
                                  AssetImage('assets/song_bg.png')),
                          Icon(Icons.fast_forward),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'fendi-Blqbones',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Text(
                                'ft joeboy',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.close,
                            color: Colors.grey,
                            size: 25,
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF26200B),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/bottom_1.png')),
                                Text(
                                  'Explore',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xFFD4AF37),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    child: Image(
                                        image:
                                            AssetImage('assets/bottom_5.PNG'))),
                                // Text(
                                //   'Explore',
                                //   style: TextStyle(
                                //     fontSize: 10,
                                //     color: Color(0xFFD4AF37),
                                //   ),
                                // )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    child: Image(
                                        image:
                                            AssetImage('assets/bottom_2.PNG'))),
                                // Text(
                                //   'Explore',
                                //   style: TextStyle(
                                //     fontSize: 10,
                                //     color: Color(0xFFD4AF37),
                                //   ),
                                // )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/bottom_3.png')),
                                // Text(
                                //   'Explore',
                                //   style: TextStyle(
                                //     fontSize: 10,
                                //     color: Color(0xFFD4AF37),
                                //   ),
                                // )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/bottom_4.png')),
                                // Text(
                                //   'Explore',
                                //   style: TextStyle(
                                //     fontSize: 10,
                                //     color: Color(0xFFD4AF37),
                                //   ),
                                // )
                              ],
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
