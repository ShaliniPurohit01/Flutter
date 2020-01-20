import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountControlller = TextEditingController();

  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountControlller,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.deepPurpleAccent,
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountControlller.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
