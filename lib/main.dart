import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web Whatsapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: whatsappClone(),
    );
  }
}

class whatsappClone extends StatefulWidget {
  const whatsappClone({Key? key}) : super(key: key);

  @override
  _whatsappCloneState createState() => _whatsappCloneState();
}

class _whatsappCloneState extends State<whatsappClone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 70,
              color: HexColor("#128C7E"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                height: MediaQuery.of(context).size.height - 80,
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.grey[200],
                        width: 500,
                        height: double.infinity,
                        child: Column(
                          children: [
                            Container(
                              color: Colors.grey[200],
                              width: 500,
                              height: 60,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage("p10.jpg"),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.data_usage),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Icon(Icons.chat_outlined),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Icon(Icons.more_vert),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.blue,
                              width: 500,
                              height: 60,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: IconButton(
                                          color: Colors.blue,
                                          onPressed: () {},
                                          icon: Icon(Icons.notifications_off)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Column(children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Get notified of new messages",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          Text("Turn on Desktop notification >",
                                              style: TextStyle(fontSize: 12))
                                        ],
                                      )
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 60,
                              child: const Padding(
                                padding: EdgeInsets.all(15),
                                child: TextField(
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      contentPadding: EdgeInsets.all(5),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(40),
                                        ),
                                      ),
                                      hintText: "Search or Start new Chat",
                                      prefixIcon: Icon(
                                        Icons.search,
                                        color: Colors.black,
                                      )),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 500,
                                height: 472,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: ListView(
                                    children: [
                                      createList("assets/p2.jpg", "Marisca",
                                          "Hello", "11.45 am"),
                                      createList("assets/p3.jpg", "Julie",
                                          "How are you ?", "10.15 am"),
                                      createList("assets/p4.jpg", "Sara",
                                          "Good Morning", "1.30 am"),
                                      createList("assets/p5.jpg", "Eva",
                                          "Cheers !!!", "8.00 pm"),
                                      createList("assets/p6.jpg", "Michelle",
                                          "Happy Birthday", "9.30 pm"),
                                      createList("assets/p7.jpg", "Minnie",
                                          "Good bye", "1.45 am"),
                                      createList("assets/p8.jpg", "Sofia",
                                          "Awesome !!", "3.55 pm"),
                                      createList("assets/p9.jpg", "Andrie",
                                          "Good Night", "8.30 pm"),
                                      createList("assets/p10.jpg", "Mandy",
                                          "See you tommorrow", "4.30 am"),
                                      createList("assets/p14.jpg", "Zendra",
                                          "Bye Bye !", "12.30 am"),
                                      createList("assets/p11.jpg", "Alexa",
                                          "Good Bye", "8.56 am"),
                                      createList("assets/p12.jpg", "Petty",
                                          "Have a nice day", "2.39 am"),
                                      createList("assets/p13.jpg", "Kiara",
                                          "Get well soon !", "1.46 am"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: HexColor("#ece5dd"),
                      width: MediaQuery.of(context).size.width - 600,
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.grey[200],
                            width: MediaQuery.of(context).size.width - 600,
                            height: 60,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, left: 10, right: 10),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/p5.jpg"),
                                    radius: 25,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Minnie",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          "Last seen 10.45 pm",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 600,
                            height: 60,
                            color: Colors.grey[200],
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 10, right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.emoji_emotions_outlined,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.attachment_sharp,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      child: TextField(
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      contentPadding: EdgeInsets.all(10),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(40),
                                        ),
                                      ),
                                      hintText: "Type a message.",
                                    ),
                                  )),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.send),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget createList(
    String str1,
    String str2,
    String str3,
    String str4,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        child: Container(
          width: 500,
          height: 50,
          color: Colors.white,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(str1),
                radius: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      str2,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      str3,
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  str4,
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
