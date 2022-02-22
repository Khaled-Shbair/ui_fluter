import 'package:flutter/material.dart';
import 'package:ui_flutter/model/question.dart';

class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key}) : super(key: key);

  @override
  _FaqsScreenState createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  final List<Question> _question = <Question>[
    Question(queation: 'Question(1)', answer: 'Answer(1)'),
    Question(queation: 'Question(2)', answer: 'Answer(2)'),
    Question(queation: 'Question(3)', answer: 'Answer(3)'),
    Question(queation: 'Question(4)', answer: 'Answer(4)'),
    Question(queation: 'Question(5)', answer: 'Answer(5)'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Faqs'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(_question[index].queation),
            subtitle: Text(_question[index].answer),
            collapsedBackgroundColor: Colors.blue.shade300,
            collapsedIconColor: Colors.red,
            collapsedTextColor:Colors.white,
            backgroundColor: Colors.grey.shade200,
            iconColor: Colors.red,
            initiallyExpanded: false,
          );
        },
      ),
    );
  }
}

/**
    body: ListView(
    padding: const EdgeInsetsDirectional.all(10),
    children: [
    ExpansionPanelList(
    expansionCallback: (paneIndex, isExpanded) {
    setState(() {
    _question[paneIndex].expanded =!isExpanded;
    });
    },
    children: _question.map((question) {
    return ExpansionPanel(
    canTapOnHeader: true,
    isExpanded: question.expanded,
    headerBuilder: (context, isExpanded) {
    return Container(
    padding: const EdgeInsetsDirectional.all(10),
    alignment: AlignmentDirectional.centerStart,
    color: Colors.grey,
    child: Text(question.queation),
    );
    },
    body: Text(question.answer));
    }).toList(),
    ),
    ],
    ),
 **/
