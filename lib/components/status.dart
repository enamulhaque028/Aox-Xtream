import 'package:flutter/material.dart';
import 'package:aos_xtream/library/custom_button.dart';
import 'package:aos_xtream/model/core/overview.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Overview> items = [
      Overview('Total Stream', '99', Icon(Icons.tonality_outlined)),
      Overview('Online', '99', Icon(Icons.circle, color: Colors.green)),
      Overview('Offline', '99', Icon(Icons.circle, color: Colors.grey)),
      Overview('Others', '99', Icon(Icons.tonality_outlined)),
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: Container(
              height: 40,
              width: 150,
              child: CustomButton(
                btnText: 'Add Stream',
                btnColor: Color(0xFF334176),
                btnIcon: Icon(Icons.add),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 120,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 50),
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  Overview item = items[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        width: 270,
                        height: 200,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.title,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        letterSpacing: 0.45),
                                  ),
                                  item.icon,
                                ],
                              ),
                              Container(
                                child: Text(
                                  item.count,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
