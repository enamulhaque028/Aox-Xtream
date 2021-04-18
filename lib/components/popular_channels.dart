import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:aos_xtream/library/custom_button.dart';
import 'package:aos_xtream/model/core/channel.dart';

class PopularChannels extends StatelessWidget {
  const PopularChannels({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Channel> channels = [
      Channel(
        '01',
        'Cassy Naples',
        'Cassey Naples',
        'Published',
        Switch(value: true, onChanged: (bool value) {}),
        Icon(Icons.play_arrow, color: Colors.green),
      ),
      Channel(
        '02',
        'Cassy Naples',
        'Cassey Naples',
        'Published',
        Switch(value: true, onChanged: (bool value) {}),
        Icon(Icons.play_arrow, color: Colors.green),
      ),
      Channel(
        '03',
        'Cassy Naples',
        'Cassey Naples',
        'Published',
        Switch(value: true, onChanged: (bool value) {}),
        Icon(Icons.stop, color: Colors.red),
      ),
      Channel(
        '04',
        'Cassy Naples',
        'Cassey Naples',
        'Published',
        Switch(value: true, onChanged: (bool value) {}),
        Icon(Icons.play_arrow, color: Colors.green),
      ),
      Channel(
        '05',
        'Cassy Naples',
        'Cassey Naples',
        'Published',
        Switch(value: true, onChanged: (bool value) {}),
        Icon(Icons.play_arrow, color: Colors.green),
      ),
      Channel(
        '06',
        'Cassy Naples',
        'Cassey Naples',
        'Published',
        Switch(value: true, onChanged: (bool value) {}),
        Icon(Icons.play_arrow, color: Colors.green),
      ),
      Channel(
        '07',
        'Cassy Naples',
        'Cassey Naples',
        'Published',
        Switch(value: true, onChanged: (bool value) {}),
        Icon(Icons.play_arrow, color: Colors.green),
      ),
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    child: CustomButton(
                      btnText: 'Stream Backup',
                      btnColor: Color(0xFF8b8b8b),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    child: CustomButton(
                      btnText: 'Download',
                      btnColor: Color(0xFF8b8b8b),
                      btnIcon: Icon(Icons.download_sharp),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 150,
                    child: OutlinedButton(
                      child: Text(
                        "Start All",
                        style: TextStyle(color: Colors.green),
                      ),
                      onPressed: () => print("it's pressed"),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(width: 2.0, color: Colors.green),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    child: CustomButton(
                      btnText: 'Stop All',
                      btnColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  color: Colors.black12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                      ),
                      Container(
                        height: 40,
                        width: 300,
                        padding: EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Search stream',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () => print("it's pressed"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 7),
                  height: 20,
                  color: Colors.grey[300],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sl',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(
                        'Name',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(
                        'Logo',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(
                        'Group',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(
                        'Status',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(
                        'Action',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(''),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                ListView.separated(
                    physics: ScrollPhysics(),
                    separatorBuilder: (context, index) => Container(
                          height: 1,
                          color: Colors.white,
                        ),
                    shrinkWrap: true,
                    itemCount: channels.length,
                    itemBuilder: (context, index) {
                      Channel channel = channels[index];
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 7),
                              height: 20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    channel.serial,
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  Text(
                                    channel.name,
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  Icon(
                                    FontAwesomeIcons.youtube,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  Text(
                                    channel.group,
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        channel.status,
                                        style:
                                            TextStyle(color: Colors.grey[700]),
                                      ),
                                      channel.switchBtn
                                    ],
                                  ),
                                  channel.actionIcon,
                                  Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.edit,
                                        size: 15,
                                        color: Colors.grey,
                                      ),
                                      Icon(
                                        Icons.delete,
                                        size: 20,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
