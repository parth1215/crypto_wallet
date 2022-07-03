

import 'package:flutter/material.dart';

import '../net/flutterfire.dart';

class AddView extends StatefulWidget {
  const AddView({Key? key}) : super(key: key);

  @override
  State<AddView> createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  List<String> coins = ["bitcoin", "tether", "ethereum"];

  @override
  String dropdownvalue = "bitcoin";
  TextEditingController _amountcontroller = TextEditingController();

  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value: dropdownvalue,
            onChanged: (String? value) {
              setState(() {
                dropdownvalue = value!;
              });
            },
            items: coins.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          Container(
            width: MediaQuery.of(context).size.width/1.3,
          child: TextFormField(
            controller: _amountcontroller,
            decoration: InputDecoration(
              labelText: 'Coin Amount',

            ),

          ),),
          Container(
            width: MediaQuery.of(context).size.width / 1.40,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white),
            child: MaterialButton(
              onPressed: () async {
               await addCoin(dropdownvalue,_amountcontroller.text);
                Navigator.of(context).pop();
              },
              child: Text("Add"),
            ),
          ),
        ],
      ),
    );
  }
}

