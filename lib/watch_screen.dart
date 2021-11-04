import 'package:animated_vertical_card/data.dart';
import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'مدل ساعت',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: Container(
            padding: EdgeInsets.all(10.0),
            child: VerticalCardPager(
              textStyle: TextStyle(
                  color: Colors.black54, fontWeight: FontWeight.bold),
              titles: MyData().watch_titles,
              images: MyData()
                  .watch_images
                  .map((e) => Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            e,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))
                  .toList(),
              onPageChanged: (page) {},
              onSelectedItem: (index) {},
            ),
          ),
        ));
  }
}
