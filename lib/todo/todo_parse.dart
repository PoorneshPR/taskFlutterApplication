import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:taskapplicationflutter/common/constants.dart';
import 'package:taskapplicationflutter/common/fontstyle.dart';

class TodoParse extends StatefulWidget {
  const TodoParse({Key? key}) : super(key: key);

  @override
  State<TodoParse> createState() => _TodoParseState();
}

class _TodoParseState extends State<TodoParse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(Constants.todoAppTitle, style: FontStyle.orange18w800),
        backgroundColor: Colors.white.withOpacity(0.8),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 12),
                child: Row(
                  children: [
                    Text(Constants.allTasks, style: FontStyle.grey15w400),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.black,
                          size: 25,
                        ))
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: Colors.white,
                border: Border.all(
                  width: 0.8,
                  color: Colors.deepOrange,
                )),
            margin: const EdgeInsets.symmetric(horizontal: 12),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    child: Icon(Icons.task_outlined,
                        color: Colors.deepOrange, size: 28),
                    backgroundColor: Colors.black26,
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Hi Poornesh,You have a meeting on Tomorrow by 11.30 am ",
                        style: FontStyle.grey14w400,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  const CircleAvatar(
                      child: Icon(Icons.notification_add_outlined,
                          color: Colors.deepOrange, size: 28),
                      backgroundColor: Colors.black26),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
