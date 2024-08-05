import 'package:ecommerce/widget/support_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/watch.png",
    "images/TV.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2f2),
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hey, Snooker", style: AppWidget.boldTextFieldStyle()),
                    Text("Good, Morning",
                        style: AppWidget.lightTextFieldStyle()),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    "images/boy.jpg",
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            const SizedBox(height: 30.0),
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Product",
                    hintStyle: AppWidget.lightTextFieldStyle(),
                    prefixIcon: const Icon(Icons.search),
                  ),
                )),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories", style: AppWidget.semiboldTextFieldStyle()),
                Text("see all", style: AppWidget.seeAllTextFieldStyle())
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  // margin: EdgeInsets.only(right: 5.0),
                  height: 100,
                  width: 50,
                  padding: EdgeInsets.zero,
                  child: const Center(
                    child: Text("All",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 15.0),
                    height: 100,
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTitle(image: categories[index]);
                        }),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Products", style: AppWidget.semiboldTextFieldStyle()),
                Text("see all", style: AppWidget.seeAllTextFieldStyle())
              ],
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 240,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Column(
                        children: [
                          Image.asset("images/headphone2.png",
                              height: 150, width: 150, fit: BoxFit.cover),
                          Text("Headphone",
                              overflow: TextOverflow
                                  .ellipsis, // จัดการกับข้อความที่ยาว
                              style: AppWidget.semiboldTextFieldStyle()),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                "฿300",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow
                                    .ellipsis, // จัดการกับข้อความที่ยาว
                              ),
                              SizedBox(width: 32.0),
                              Container(
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    // color: Color.fromARGB(255, 239, 55, 55),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Icon(Icons.add, color: Colors.white))
                            ],
                          )
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Column(
                        children: [
                          Image.asset("images/watch2.png",
                              height: 150, width: 150, fit: BoxFit.cover),
                          Text("Apple Watch",
                              overflow: TextOverflow
                                  .ellipsis, // จัดการกับข้อความที่ยาว
                              style: AppWidget.semiboldTextFieldStyle()),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                "฿400",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow
                                    .ellipsis, // จัดการกับข้อความที่ยาว
                              ),
                              SizedBox(width: 32.0),
                              Container(
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    // color: Color.fromARGB(255, 239, 55, 55),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Icon(Icons.add, color: Colors.white))
                            ],
                          )
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Column(
                        children: [
                          Image.asset("images/laptop2.png",
                              height: 150, width: 150, fit: BoxFit.cover),
                          Text("Laptop",
                              overflow: TextOverflow
                                  .ellipsis, // จัดการกับข้อความที่ยาว
                              style: AppWidget.semiboldTextFieldStyle()),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Text(
                                "฿500",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow
                                    .ellipsis, // จัดการกับข้อความที่ยาว
                              ),
                              SizedBox(width: 32.0),
                              Container(
                                  padding: EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                    // color: Color.fromARGB(255, 239, 55, 55),
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Icon(Icons.add, color: Colors.white))
                            ],
                          )
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  // const CategoryTitle({super.key});
  String image;
  CategoryTitle({required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      margin: const EdgeInsets.only(right: 15.0),
      height: 90.0,
      width: 90.0,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Icon(
            Icons.arrow_forward_ios,
            size: 15.0,
          ),
        ],
      ),
    );
  }
}
