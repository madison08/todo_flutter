import 'package:flutter/material.dart';
import 'package:todoapp/constants.dart';

import 'package:provider/provider.dart';
import '../widgets/myData.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      width: 10.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Container(
            color: Colors.grey,
            width: 60.0,
            height: 3.0,
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Ajouter une tache',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25.0,
            ),
          ),
          TextField(
            autofocus: true,
            onChanged: (val) {
              Provider.of<Data>(context, listen: false).changeString(val);
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            child: TextButton(
                onPressed: null,
                child: Text(
                  'Ajouter',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                )),
          )
        ],
      ),
    );
  }
}
