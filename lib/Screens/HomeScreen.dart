import 'package:demoprj/Models/NewsfeedModel.dart';
import 'package:demoprj/Widgets/AppBar.dart';
import 'package:demoprj/Widgets/BottomBar.dart';
import 'package:demoprj/Widgets/CarouselImage.dart';
import 'package:demoprj/Widgets/ProfileHeader.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
//Todo API integration
class _MyHomePageState extends State<MyHomePage> {
  int _selectedItem = 0;
  int _currentImage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    CarouselImage(
        image:
            "http://llandscapes-10674.kxcdn.com/wp-content/uploads/2015/04/durdle-door.jpg"),
    CarouselImage(
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXYTWUR1f2ZujGAaZHeYzABB0oX50kV9Q27vTYnmX1EBRc6kK54I3xnqI5hv6Y6mXxb8I&usqp=CAU"),
    CarouselImage(
        image:
            "https://images.everydayhealth.com/images/ordinary-fruits-with-amazing-health-benefits-05-1440x810.jpg"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentImage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: InstaAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: [
          Icons.home,
          Icons.search_outlined,
          Icons.add_box_outlined,
          Icons.favorite_border_outlined,
          Icons.person,
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 1,
      ),
      body: ListView.builder(
          itemCount: feeds.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.only(
                top: 10,
              ),
              height: size.height * 0.7,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileHeader(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: size.height * 0.5,
                    child: Stack(
                      children: <Widget>[
                        PageView.builder(
                          scrollDirection: Axis.horizontal,
                          onPageChanged: _onchanged,
                          controller: _controller,
                          itemCount: _pages.length,
                          itemBuilder: (context, int index) {
                            return _pages[index];
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 3),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.favorite_border_outlined,
                            size: 28, color: Colors.black54),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.chat_bubble_outline,
                            size: 28, color: Colors.black54),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.send_outlined,
                            size: 28, color: Colors.black54),
                        Expanded(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List<Widget>.generate(_pages.length,
                                  (int index) {
                                return AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    height: 5,
                                    width: 5,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 0),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: (index == _currentImage)
                                            ? Colors.blue
                                            : Colors.grey.withOpacity(0.5)));
                              })),
                        ),
                        Icon(Icons.bookmark_border_sharp,
                            size: 28, color: Colors.black54),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '84 likes',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Lady with Black Umbrella Acrylic Painting",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
