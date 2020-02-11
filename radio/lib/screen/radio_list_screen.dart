import 'package:flutter/material.dart';
import './view_radio.dart';
import '../model/radio_data.dart';
import '../widget/app_drawer.dart';

// class RadioList extends StatefulWidget {
//   @override
//   _RadioListState createState() => _RadioListState();
// }

// class _RadioListState extends State<RadioList> {

class RadioList extends StatelessWidget {
  final radio = [
    new RadioData(
      radioId: '1',
      radioTitle: 'title1',
    ),
    new RadioData(
      radioId: '2',
      radioTitle: 'title2',
    ),
    new RadioData(
      radioId: '3',
      radioTitle: 'title3',
    ),
    new RadioData(
      radioId: '4',
      radioTitle: 'title4',
    ),
    new RadioData(
      radioId: '5',
      radioTitle: 'title5',
    ),
    new RadioData(
      radioId: '6',
      radioTitle: 'title6',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio App')),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ViewRadio()));
          },
          child: Icon(Icons.add)),
      drawer: AppDrawer(),
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
        itemBuilder: (_, index) {
          return ListTile(
            title: Text(
              radio[index].radioTitle,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => ViewRadio(
                        radioId: radio[index].radioId,
                      )));
            },
          );
        },
        itemCount: radio.length,
      ),
    );
  }
}
