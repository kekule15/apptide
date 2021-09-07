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
    "assets/caro.png",
    "assets/caro.png",
    "assets/caro.png",
  ];
  _imageCarousel() {
    final List<String> listImages = images;
    return Column(
      children: <Widget>[
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            enlargeCenterPage: true,
            //height: 300,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          items: listImages
              .map(
                (item) => Container(
                  child: Image.asset(
                    item,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width / 1,
                  ),
                ),
              )
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listImages.map((urlOfItem) {
            int index = listImages.indexOf(urlOfItem);
            return Container(
              width: 10.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index ? Colors.black : Colors.grey),
            );
          }).toList(),
        )
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
                          fontSize: 18,
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
              Container(
                height: MediaQuery.of(context).size.height / 2.2,
                child: _imageCarousel(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
