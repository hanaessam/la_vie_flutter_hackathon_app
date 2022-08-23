import 'package:flutter/material.dart';
import 'package:la_vie_app/constants.dart';

class astronomyQuiz {
  var questions = [
    'What is a deciduous plant?',
    'What is chocolate made from?',
    'Which of these plants spread their seeds on water?',
    'What is an annual plant?',
    'Which of these is a flowering plant?',
    'What are leaves for?',
    'Which of these is a nonflowering plant?',
    'How can you tell the age of most trees?',
    'What are the male parts of a flower called?',
    'How does a plant get water from the soil?'
  ];

  var choices = [
    [
      'A plant that loses its leaves each year',
      'A plant that keeps its leaves all year round',
      'A plant that bears fruit',
      'A plant that bears cones all year round'
    ],
    ['Coffee beans', 'Chicory', 'Cocoa beans', 'Durum wheat'],
    ['Roses', 'Pine Trees', 'Dandelions', 'Water Lilies'],
    [
      'One that lives for more than two years',
      'One that germinates, flowers, seeds, and dies in a year',
      'One that germinates, flowers, seeds, and dies every two years',
      'One that loses its leaves in winter'
    ],
    ['Oak Tree', 'Fir Tree', 'Seaweed', 'Moss'],
    [
      'To make the plant look pretty',
      'To protect flowers from insects and other animals',
      'To soak up the sun’s energy and convert it into food',
      'To protect plants from the rain'
    ],
    ['Dandelion', 'Eryngo', 'Fern', 'Oak Tree'],
    [
      'By measuring the tree’s width',
      'By counting the number of leaves a tree has',
      'By counting the rings on the trunk',
      'By measuring the tree’s height'
    ],
    ['Carpels', 'Stigma', 'Stamens', 'Pollen'],
    [
      'Through its leaves',
      'Through its roots',
      'Through its stem',
      'Through its flowers',
    ]
  ];

  var correctAnswers = [
    'A plant that loses its leaves each year',
    'Cocoa beans',
    'Water Lilies',
    'One that germinates, flowers, seeds, and dies in a year',
    'Oak Tree',
    'To soak up the sun’s energy and convert it into food',
    'Fern',
    'By counting the rings on the trunk',
    'Stamens',
    'Through its roots'
  ];
}

var finalScore = 0;
var questionNumber = 0;
var quiz = astronomyQuiz();

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Course Exam',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            const Text(
                              'Question ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35.0),
                            ), Text('${questionNumber + 1}', style: const TextStyle(color: kLavieGreen, fontWeight: FontWeight.bold, fontSize: 40),),
                             Text('/${quiz.questions.length}', style: const TextStyle(color: Colors.grey, fontSize: 25),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    quiz.questions[questionNumber],
                    style: const TextStyle(
                        fontFamily: 'DaysOne',
                        color: Colors.black,
                        fontSize: 25.0),
                  ),
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        if (quiz.choices[questionNumber][0] ==
                            quiz.correctAnswers[questionNumber]) {
                          print('Correct');
                          finalScore++;
                        } else {
                          print('Wrong');
                        }
                        updateQuestion();
                      },
                      child: ChoiceButton(quiz.choices[questionNumber][0]),
                    ),
                    TextButton(
                      onPressed: () {
                        if (quiz.choices[questionNumber][1] ==
                            quiz.correctAnswers[questionNumber]) {
                          print('Correct');
                          finalScore++;
                        } else {
                          print('Wrong');
                        }
                        updateQuestion();
                      },
                      child: ChoiceButton(quiz.choices[questionNumber][1]),
                    ),
                    TextButton(
                      onPressed: () {
                        if (quiz.choices[questionNumber][2] ==
                            quiz.correctAnswers[questionNumber]) {
                          print('Correct');
                          finalScore++;
                        } else {
                          print('Wrong');
                        }
                        updateQuestion();
                      },
                      child: ChoiceButton(quiz.choices[questionNumber][2]),
                    ),
                    TextButton(
                      onPressed: () {
                        if (quiz.choices[questionNumber][3] ==
                            quiz.correctAnswers[questionNumber]) {
                          print('Correct');
                          finalScore++;
                        } else {
                          print('Wrong');
                        }
                        updateQuestion();
                      },
                      child: ChoiceButton(quiz.choices[questionNumber][3]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            resetQuiz();
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border:
                                    Border.all(color: kLavieGreen, width: 2)),
                            child: const Center(
                              child: Text(
                                'Reset',
                                style: TextStyle(
                                    color: kLavieGreen, fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            new Summary(score: finalScore)))
                                .then((value) => setState(() {}));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.4,
                            decoration: BoxDecoration(
                                color: kLavieGreen,
                                borderRadius: BorderRadius.circular(12.0),
                                border:
                                    Border.all(color: kLavieGreen, width: 2)),
                            child: const Center(
                              child: Text(
                                'Next',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == (quiz.questions.length - 1)) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Summary(score: finalScore)));
      } else {
        questionNumber++;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  Summary({required this.score});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kLavieDarkGreen,
        body: Stack(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Results',
                      style: TextStyle(
                        fontFamily: 'DaysOne',
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Total correct answers :',
                    style: TextStyle(
                        fontFamily: 'DaysOne',
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                ),
                Text(
                  '$score out of 10 Questions',
                  style: const TextStyle(color: Colors.amber, fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(45.0),
                  child: Container(
                    width: 300,
                    height: 370,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: kLavieGreen, width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: [
                          const Text(
                            'Your final score is',
                            style:
                                TextStyle(color: kLavieGreen, fontSize: 25.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                    BoxShadow(
                                    color: Colors.black26,
                                    spreadRadius: 3,
                                    blurRadius: 4,
                                    offset: Offset(3, 3),
                                  )
                                ],
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  colors: [Colors.amber, Colors.amber.shade700],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  '$score' '0',
                                  style: const TextStyle(
                                      fontFamily: 'DaysOne',
                                      color: Colors.white,
                                      fontSize: 60.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChoiceButton extends StatelessWidget {
  var choice;
  ChoiceButton(this.choice);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kLavieGreen, width: 2)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          choice,
          style: const TextStyle(color: Colors.black, fontSize: 20.0),
        ),
      ),
    );
  }
}
