import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int barIndex = 0;
  List<IconData> bar = [
    Icons.home_outlined,
    Icons.favorite_outlined,
    Icons.shopping_cart_outlined,
    Icons.person_outlined
  ];

  List<String> gcard=[
    
  ]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 236, 236),
        body: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Discover',
                      style: GoogleFonts.poppins(
                          fontSize: 30, fontWeight: FontWeight.w700)),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('lib/images/profile.jpg'),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    height: 50,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Search'), Icon(Icons.search)],
                      ),
                    ))),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  height: 110,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(20),
          child: Material(
              elevation: 10,
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 116, 138, 83),
              child: Container(
                height: 70,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: bar.length,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (ctx, i) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          barIndex = i;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 250),
                        width: 50,
                        child: Icon(
                          bar[i],
                          size: 35,
                          color: i == barIndex
                              ? Color.fromARGB(255, 201, 210, 177)
                              : Color.fromARGB(255, 54, 64, 45),
                        ),
                      ),
                    ),
                  ),
                  scrollDirection: Axis.horizontal,
                ),
              )),
        ));
  }
}
