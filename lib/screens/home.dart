import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var Category = ['House', 'Apartment', 'Hotel', 'Villa', "Cottage"];
  int selectedCategoryIndex = -1;
  var houses = [
    'assets/image/house1.png',
    'assets/image/house1.png',
    'assets/image/house1.png',
    'assets/image/house1.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.apps)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Post Property',
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(fontSize: 12.83),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_home_work_outlined),
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 52,
                  width: 314,
                  decoration: BoxDecoration(
                    border: Border.all(color: CupertinoColors.systemGrey6),
                    color: CupertinoColors.systemGrey6,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search address or near you',
                      hintStyle: TextStyle(fontSize: 12.83),
                      contentPadding: EdgeInsets.symmetric(vertical: 25),
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: CupertinoColors.systemGrey6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 51.31,
                width: 51.31,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.69)),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff04242F), Color(0xff0A8ED9)])),
                child: Icon(
                  Icons.filter_list_outlined,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
              itemCount: Category.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategoryIndex = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: selectedCategoryIndex == index
                            ? const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff04242F), Color(0xff0A8ED9)])
                            : null,
                        color: selectedCategoryIndex == index
                            ? null
                            : CupertinoColors.systemGrey6,
                      ),
                      child: Center(
                        child: Text(
                          Category[index],
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: selectedCategoryIndex == index
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Near from you', style: TextStyle(fontSize: 17)),
                Text('See more',
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 297,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.asset(houses[index], fit: BoxFit.cover),
                    ),
                  );
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Best for you', style: TextStyle(fontSize: 17)),
                Text('See more',
                    style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blueGrey,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}