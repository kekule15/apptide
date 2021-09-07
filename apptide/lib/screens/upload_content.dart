import 'package:flutter/material.dart';

class UploadContent extends StatefulWidget {
  const UploadContent({Key? key}) : super(key: key);

  @override
  _UploadContentState createState() => _UploadContentState();
}

class _UploadContentState extends State<UploadContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  },
                  color: Colors.black,
                ),
                Text(
                  'Upload Content',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 5.0,
                              offset: Offset(0.0, 0.75))
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Music',
                          style: TextStyle(color: Color(0xFFD4AF37)),
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                        // boxShadow: <BoxShadow>[
                        //   BoxShadow(
                        //       color: Colors.black54,
                        //       blurRadius: 5.0,
                        //       offset: Offset(0.0, 0.75))
                        // ],
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Video',
                          style: TextStyle(color: Color(0xFFD4AF37)),
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                        // boxShadow: <BoxShadow>[
                        //   BoxShadow(
                        //       color: Colors.black54,
                        //       blurRadius: 5.0,
                        //       offset: Offset(0.0, 0.75))
                        // ],
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Product',
                          style: TextStyle(color: Color(0xFFD4AF37)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Color(0xFFD4AF37).withOpacity(0.3),
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 1, color: Color(0xFFD4AF37).withOpacity(0.9))),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width / 3.5,
                  color: Color(0xFFD4AF37).withOpacity(0.4),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 1, color: Color(0xFFD4AF37).withOpacity(0.9))),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width / 3.5,
                  color: Color(0xFFD4AF37).withOpacity(0.4),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 1, color: Color(0xFFD4AF37).withOpacity(0.9))),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFD4AF37).withOpacity(0.2),
                border: Border.all(
                    width: 1, color: Color(0xFFD4AF37).withOpacity(0.7)),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Image(image: AssetImage('assets/upload_1.png')),
                  ),
                  Text(
                    'Upload music file',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    'Browse',
                    style: TextStyle(
                      color: Color(0xFFD4AF37).withOpacity(0.9),
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'MAX SIZE: 30MB',
                style: TextStyle(color: Colors.black, fontSize: 10),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SONG TITLE',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFD4AF37).withOpacity(0.3),
                          border: Border.all(
                              width: 1,
                              color: Color(0xFFD4AF37).withOpacity(0.9))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 10, 8),
                        child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.grey),
                                hintText: 'eg The Mountains')),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'RACORD LABEL',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFD4AF37).withOpacity(0.3),
                          border: Border.all(
                              width: 1,
                              color: Color(0xFFD4AF37).withOpacity(0.9))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 10, 8),
                        child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.grey),
                                hintText: 'eg The Mountains Group')),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'YEAR RELEASED',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFD4AF37).withOpacity(0.3),
                          border: Border.all(
                              width: 1,
                              color: Color(0xFFD4AF37).withOpacity(0.9))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Row(
                          children: [
                            Text(
                              'Select Year',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GENRE',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFD4AF37).withOpacity(0.3),
                          border: Border.all(
                              width: 1,
                              color: Color(0xFFD4AF37).withOpacity(0.9))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Row(
                          children: [
                            Text(
                              'Hip Hop',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF26200B),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Save & Continue',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Image(image: AssetImage('assets/arrow.png'))
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
