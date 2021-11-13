import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todo/constants.dart';
import 'package:todo/contain.dart';
import 'package:todo/screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController taskCtrl = TextEditingController();
  TextEditingController Dctrl = TextEditingController();
  TextEditingController statusController = TextEditingController();

  List tasks = [];
  List deadline = [];
  String getTask = '';
  String getDeadline = '';
  String getStatus = '';

  savedTodos() {
    setState(() {
      tasks.add(getTask);
      taskCtrl.clear();
      deadline.add(getDeadline);
      Dctrl.clear();
      statusController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.deepOrange.shade100,
        appBar: AppBar(
          title: Text(
            "TODOS",
            style: TextStyle(fontSize: 35, fontStyle: FontStyle.italic),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Add your TASK\'s'),
                          content: Column(
                            children: [
                              TextField(
                                controller: taskCtrl,
                                onChanged: (value) {
                                  getTask = value;
                                },
                                decoration:
                                    InputDecoration(hintText: "Your Task"),
                              ),
                              TextField(
                                controller: Dctrl,
                                onChanged: (value) {
                                  getDeadline = value;
                                },
                                decoration:
                                    InputDecoration(hintText: "Deadline"),
                              ),
                            ],
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text('CANCEL'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                savedTodos();

                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      });
                },
                icon: Icon(
                  Icons.add,
                  size: 40,
                )),
            SizedBox(width: size.width * 0.05)
          ],
          backgroundColor: Colors.deepOrange.shade600,
        ),
        body: Padding(
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
              "Your Tasks",
              style: h2,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: tasks.length,
                    itemBuilder: (context, i) {
                      return Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: ListTile(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              tileColor: Colors.deepOrange.shade400,
                              title: Text(
                                'Todo : ${tasks[i]} ',
                                style: h2,
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  "Deadline : ${deadline[i]} ",
                                ),
                              ),
                              trailing: Wrap(children: [
                                IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text('Add your TASK\'s'),
                                              content: Column(
                                                children: [
                                                  TextField(
                                                    controller: taskCtrl,
                                                    onChanged: (value) {
                                                      getTask = value;
                                                    },
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "Your  updated Task"),
                                                  ),
                                                  TextField(
                                                    controller: Dctrl,
                                                    onChanged: (value) {
                                                      getDeadline = value;
                                                    },
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            " updated Deadline"),
                                                  ),
                                                ],
                                              ),
                                              actions: <Widget>[
                                                TextButton(
                                                  child: Text('CANCEL'),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text('OK'),
                                                  onPressed: () {
                                                    setState(() {
                                                      tasks.replaceRange(
                                                          i, i + 1, {
                                                        getTask,
                                                        getDeadline
                                                      });
                                                    });

                                                    Navigator.pop(context);
                                                  },
                                                ),
                                              ],
                                            );
                                          });
                                    },
                                    icon: Icon(Icons.edit)),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        tasks.removeAt(0);
                                        Navigator.pop(context);
                                      });
                                    },
                                    icon: Icon(Icons.delete)),
                              ])));
                    }))
          ]),
        ));
  }
}
