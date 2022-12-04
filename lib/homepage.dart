import 'package:flutter/material.dart';
import 'printdoc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textController1 = TextEditingController();
  String userPost1 = '';
  final _textController2 = TextEditingController();
  String userPost2 = '';
  final _textController3 = TextEditingController();
  String userPost3 = '';
  final _textController4 = TextEditingController();
  String userPost4 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
              alignment: const Alignment(-1, 1),
              child: Container(
                child: Text(
                  'Name',
                  style: TextStyle(fontSize: 20),
                ),
                color: Colors.amber,
              )),
          TextField(
            controller: _textController1,
            decoration: InputDecoration(
                hintText: 'Name',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController1.clear();
                  },
                  icon: const Icon(Icons.clear),
                )),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                userPost1 = _textController1.text;
              });
            },
            color: Colors.blue,
            child: Text(
              'Done',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Align(
              alignment: const Alignment(-1, 1),
              child: Container(
                child: Text(
                  'Contact No.',
                  style: TextStyle(fontSize: 20),
                ),
                color: Colors.amber,
              )),
          TextField(
            controller: _textController2,
            decoration: InputDecoration(
                hintText: '98XXXXXXXX',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController2.clear();
                  },
                  icon: const Icon(Icons.clear),
                )),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                userPost2 = _textController2.text;
              });
            },
            color: Colors.blue,
            child: Text(
              'Done',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Align(
              alignment: const Alignment(-1, 1),
              child: Container(
                child: Text(
                  'Email',
                  style: TextStyle(fontSize: 20),
                ),
                color: Colors.amber,
              )),
          TextField(
            controller: _textController3,
            decoration: InputDecoration(
                hintText: 'Email',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController3.clear();
                  },
                  icon: const Icon(Icons.clear),
                )),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                userPost3 = _textController3.text;
              });
            },
            color: Colors.blue,
            child: Text(
              'Done',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Align(
              alignment: const Alignment(-1, 1),
              child: Container(
                child: Text(
                  'Work, Experience and Projects',
                  style: TextStyle(fontSize: 20),
                ),
                color: Colors.amber,
              )),
          TextField(
            maxLines: 8,
            controller: _textController4,
            decoration: InputDecoration(
                hintText: 'Work, Experience and Projects',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    _textController4.clear();
                  },
                  icon: const Icon(Icons.clear),
                )),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                userPost4 = _textController4.text;
              });
            },
            color: Colors.blue,
            child: Text(
              'Done',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                pdfservice.pdfgen(userPost1,userPost2,userPost3,userPost4);
              });
            },
            color: Colors.blue,
            child: Text(
              'Generatepdf',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
