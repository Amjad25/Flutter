// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo/constants.dart';

class scrn extends StatefulWidget {
  const scrn({Key? key}) : super(key: key);

  @override
  _scrnState createState() => _scrnState();
}

class _scrnState extends State<scrn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(children: [
        Text(
          "Hello AMJAD",
          style: FHeading,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "TODAY'S TASKS",
          style: h2,
        ),
        Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(bottom: 18),
                      child: ListTile(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          tileColor: Colors.deepOrange.shade400,
                          title: Text(
                            'Todo : ',
                            style: h2,
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              // "Priority ${chosenValue![index]}",
                              "Priority ",
                            ),
                          ),
                            trailing: Wrap(
                            // crossAxisAlignment: WrapCrossAlignment.start,
                            // spacing: 10,
                            // mainAxisSize: MainAxisSize.min,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Edit Todos
                              Icon(Icons.edit),
                              SizedBox(width: 30,),
                              Icon(Icons.delete)
                              ]
                              )
                          ));
                }))
      ]),
    );
  }
}
