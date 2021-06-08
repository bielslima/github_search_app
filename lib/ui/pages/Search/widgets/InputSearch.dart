import 'package:flutter/material.dart';

class InputSearch extends StatelessWidget {
  final TextEditingController txtController;
  const InputSearch({Key? key, required this.txtController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: TextFormField(
        controller: this.txtController,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
