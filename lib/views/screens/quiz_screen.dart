import 'package:flutter/material.dart';
import 'package:la_vie_app/constants.dart';

class astronomyQuiz {

  var questions = [
    'Which is the closest planet to the sun?',
    'What is the sun mainly made from?',
    'What are comets mostly made of?',
    'Which of these planets is the smallest?',
    'Which of these planets is the Largest?',
    'What is the great red spot on Jupiter?',
    'How many moons does Mars have?',
    'Which of these best describes the atmosphere surrounding Venus?',
    'Where is the asteroid belt?',
    'What is the 6th planet in the solar system?'
  ];

  var choices = [
    ['Venus', 'Earth', 'Mercury', 'Neptune'],
    ['Liquid Lava', 'Molten iron', 'Rock', 'Gas'],
    [
      'Dirty ice and dust',
      'Rusty metal',
      'Poisonous liquid',
      'Hot, liquid rock'
    ],
    ['Mercury', 'Jupiter', 'Uranus', 'Earth'],
    ['Mercury', 'Jupiter', 'Uranus', 'Earth'],
    ['A lake', 'A crater', 'A volcano', 'A storm'],
    ['50', '1', '2', '13'],
    ['Cold and snowy', 'Bright and sunny', 'Hot and poisonous', 'Cold and wet'],
    [
      'Between Earth and Mars',
      'Between Mars and Jupiter',
      'Between Earth and Venus',
      'Between Jupiter and Saturn'
    ],
    [
      'Jupiter',
      'Saturn',
      'Earth',
      'Neptune',
    ]
  ];

  var correctAnswers = [
    'Mercury',
    'Gas',
    'Dirty ice and dust',
    'Mercury',
    'Jupiter',
    'A storm',
    '2',
    'Hot and poisonous',
    'Between Mars and Jupiter',
    'Saturn'
  ];
}

var finalScore = 0;
var questionNumber = 0;
var quiz = new astronomyQuiz();

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
          title: Text('Course Exam', style: TextStyle(color: Colors.black),),
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
                    child: Container(
                      child: Center(
                        child: Text(
                          'Question ${questionNumber + 1} / ${quiz.questions.length}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                quiz.questions[questionNumber],
                style: TextStyle(
                    fontFamily: 'DaysOne', color: Colors.black, fontSize: 25.0),
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
                          border: Border.all(color: kLavieGreen, width: 2)
                        ),
                        child: Center(
                          child: Text(
                            'Reset',
                            style: TextStyle(
                                color: kLavieGreen,
                                fontSize: 20.0),
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
                            border: Border.all(color: kLavieGreen, width: 2)
                        ),
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0),
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
                builder: (context) => new Summary(score: finalScore)));
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20.0),
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
                          Text(
                            'Your final score is',
                            style: TextStyle(
                                color: kLavieGreen,
                                fontSize: 25.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                              width: 170,
                              height: 170,
                              decoration: BoxDecoration(
                                boxShadow: [
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
                                  style: TextStyle(
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
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        border: Border.all(color: kLavieGreen, width: 2)
      ),
      child: Center(
        child: Text(
          choice,
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.0),
        ),
      ),
    );
  }
}
