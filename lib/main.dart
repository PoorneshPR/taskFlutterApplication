import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:taskapplicationflutter/todo/maintodolist.dart';
import 'package:taskapplicationflutter/todo/todo_parse.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const keyApplicationID = "nKU0aZYvnNEotDfAU7uUVOW5WMTMz7YkLRTOn00g";
  const keyClientKey = "xUOAxAGWTmCmA9R0Wx5NxpmWcVUjZ47dKfmpGfQJ";
  const keyParseServerUrl = "https://parseapi.back4app.com";
  await Parse()
      .initialize(keyApplicationID, keyParseServerUrl, clientKey: keyClientKey);

  var firstObject = ParseObject('MyParseApp')
    ..set(
        'message', 'Hey ! First message from Flutter. Parse is now connected');
  await firstObject.save();

  print('done');
  runApp(const MyParseApp());
}

class MyParseApp extends StatelessWidget {
  const MyParseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "demoBack4App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage()
    );

  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MainToDoList();
  }
}

