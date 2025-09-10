import 'package:flutter/material.dart';
import 'package:quiz_app/app/data/models/quiz.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currIndx = 0;
  List<Quiz> quizData = [
    Quiz(
      id: 1,
      question: "What is the capital of India?",
      opts: ["Mumbai", "New Delhi", "Kolkata", "Chennai"],
      correctIndex: 1,
    ),
    Quiz(
      id: 2,
      question: "Which planet is known as the Red Planet?",
      opts: ["Earth", "Venus", "Mars", "Jupiter"],
      correctIndex: 2,
    ),
    Quiz(
      id: 3,
      question: "Who invented the telephone?",
      opts: [
        "Alexander Graham Bell",
        "Thomas Edison",
        "Nikola Tesla",
        "James Watt",
      ],
      correctIndex: 0,
    ),
    Quiz(
      id: 4,
      question: "What is the largest mammal?",
      opts: ["Elephant", "Blue Whale", "Giraffe", "Shark"],
      correctIndex: 1,
    ),
    Quiz(
      id: 5,
      question: "Which language is used to build Flutter apps?",
      opts: ["Java", "Kotlin", "Dart", "Swift"],
      correctIndex: 2,
    ),
    Quiz(
      id: 6,
      question: "What is the chemical symbol of Gold?",
      opts: ["Ag", "Au", "Gd", "Go"],
      correctIndex: 1,
    ),
    Quiz(
      id: 7,
      question: "How many continents are there in the world?",
      opts: ["5", "6", "7", "8"],
      correctIndex: 2,
    ),
    Quiz(
      id: 8,
      question: "Which gas do humans exhale during respiration?",
      opts: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Helium"],
      correctIndex: 2,
    ),
    Quiz(
      id: 9,
      question: "What is 25 × 4?",
      opts: ["50", "75", "100", "125"],
      correctIndex: 2,
    ),
    Quiz(
      id: 10,
      question: "Which is the smallest prime number?",
      opts: ["0", "1", "2", "3"],
      correctIndex: 2,
    ),
    Quiz(
      id: 11,
      question: "Who is known as the Father of the Nation in India?",
      opts: [
        "Subhash Chandra Bose",
        "Jawaharlal Nehru",
        "Mahatma Gandhi",
        "Bhagat Singh",
      ],
      correctIndex: 2,
    ),
    Quiz(
      id: 12,
      question: "Which organ purifies blood in the human body?",
      opts: ["Lungs", "Kidney", "Heart", "Liver"],
      correctIndex: 1,
    ),
    Quiz(
      id: 13,
      question:
          "Which programming language is known as the mother of all languages?",
      opts: ["Python", "C", "Java", "Assembly"],
      correctIndex: 1,
    ),
    Quiz(
      id: 14,
      question: "Which river is the longest in the world?",
      opts: ["Amazon", "Nile", "Ganga", "Yangtze"],
      correctIndex: 1,
    ),
    Quiz(
      id: 15,
      question: "How many players are there in a cricket team?",
      opts: ["9", "10", "11", "12"],
      correctIndex: 2,
    ),
    Quiz(
      id: 16,
      question: "What is the boiling point of water?",
      opts: ["90°C", "95°C", "100°C", "110°C"],
      correctIndex: 2,
    ),
    Quiz(
      id: 17,
      question: "Which planet is closest to the Sun?",
      opts: ["Mercury", "Venus", "Earth", "Mars"],
      correctIndex: 0,
    ),
    Quiz(
      id: 18,
      question: "Which metal is liquid at room temperature?",
      opts: ["Mercury", "Iron", "Silver", "Aluminium"],
      correctIndex: 0,
    ),
    Quiz(
      id: 19,
      question: "What is the square root of 144?",
      opts: ["10", "11", "12", "13"],
      correctIndex: 2,
    ),
    Quiz(
      id: 20,
      question: "Which is the national bird of India?",
      opts: ["Sparrow", "Peacock", "Crow", "Pigeon"],
      correctIndex: 1,
    ),
    Quiz(
      id: 21,
      question: "Who developed the theory of relativity?",
      opts: ["Newton", "Einstein", "Tesla", "Galileo"],
      correctIndex: 1,
    ),
    Quiz(
      id: 22,
      question: "Which is the largest desert in the world?",
      opts: ["Thar", "Sahara", "Antarctica", "Gobi"],
      correctIndex: 2,
    ),
    Quiz(
      id: 23,
      question: "Which device is used to measure temperature?",
      opts: ["Barometer", "Thermometer", "Hygrometer", "Anemometer"],
      correctIndex: 1,
    ),
    Quiz(
      id: 24,
      question: "Which country is called the Land of the Rising Sun?",
      opts: ["China", "Japan", "Korea", "Thailand"],
      correctIndex: 1,
    ),
    Quiz(
      id: 25,
      question: "Which planet is called the 'Blue Planet'?",
      opts: ["Earth", "Venus", "Neptune", "Uranus"],
      correctIndex: 0,
    ),
    Quiz(
      id: 26,
      question: "Who painted the Mona Lisa?",
      opts: ["Picasso", "Leonardo da Vinci", "Michelangelo", "Van Gogh"],
      correctIndex: 1,
    ),
    Quiz(
      id: 27,
      question: "Which Indian festival is known as the festival of lights?",
      opts: ["Holi", "Diwali", "Eid", "Onam"],
      correctIndex: 1,
    ),
    Quiz(
      id: 28,
      question: "Which is the fastest land animal?",
      opts: ["Cheetah", "Tiger", "Horse", "Lion"],
      correctIndex: 0,
    ),
    Quiz(
      id: 29,
      question: "Which is the hardest natural substance?",
      opts: ["Gold", "Diamond", "Iron", "Platinum"],
      correctIndex: 1,
    ),
    Quiz(
      id: 30,
      question: "How many degrees are in a right angle?",
      opts: ["45", "60", "90", "120"],
      correctIndex: 2,
    ),
    Quiz(
      id: 31,
      question: "What is the largest planet in our solar system?",
      opts: ["Saturn", "Neptune", "Jupiter", "Mars"],
      correctIndex: 2,
    ),
    Quiz(
      id: 32,
      question: "What is H2O commonly known as?",
      opts: ["Oxygen", "Hydrogen", "Water", "Acid"],
      correctIndex: 2,
    ),
    Quiz(
      id: 33,
      question: "Which day is celebrated as World Environment Day?",
      opts: ["5 June", "22 April", "15 August", "1 May"],
      correctIndex: 0,
    ),
    Quiz(
      id: 34,
      question: "What is the national currency of Japan?",
      opts: ["Yen", "Won", "Dollar", "Rupee"],
      correctIndex: 0,
    ),
    Quiz(
      id: 35,
      question: "What is the freezing point of water?",
      opts: ["0°C", "32°C", "Both A & B", "10°C"],
      correctIndex: 2,
    ),
    Quiz(
      id: 36,
      question: "Which gas is most abundant in the Earth's atmosphere?",
      opts: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Argon"],
      correctIndex: 1,
    ),
    Quiz(
      id: 37,
      question: "What is 15 × 8?",
      opts: ["100", "110", "120", "130"],
      correctIndex: 2,
    ),
    Quiz(
      id: 38,
      question: "Which ocean is the largest?",
      opts: ["Atlantic", "Indian", "Pacific", "Arctic"],
      correctIndex: 2,
    ),
    Quiz(
      id: 39,
      question: "Which is the national game of India?",
      opts: ["Cricket", "Hockey", "Football", "Kabaddi"],
      correctIndex: 1,
    ),
    Quiz(
      id: 40,
      question: "Which organ is responsible for pumping blood?",
      opts: ["Lungs", "Brain", "Heart", "Kidney"],
      correctIndex: 2,
    ),
    Quiz(
      id: 41,
      question: "Which vitamin is known as sunshine vitamin?",
      opts: ["Vitamin A", "Vitamin B", "Vitamin C", "Vitamin D"],
      correctIndex: 3,
    ),
    Quiz(
      id: 42,
      question: "Which gas do plants release during photosynthesis?",
      opts: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"],
      correctIndex: 0,
    ),
    Quiz(
      id: 43,
      question: "Which Indian state is famous for tea plantations?",
      opts: ["Assam", "Punjab", "Kerala", "Rajasthan"],
      correctIndex: 0,
    ),
    Quiz(
      id: 44,
      question: "How many states are there in India?",
      opts: ["27", "28", "29", "30"],
      correctIndex: 1,
    ),
    Quiz(
      id: 45,
      question: "What is the speed of light?",
      opts: ["3×10^6 m/s", "3×10^8 m/s", "3×10^5 km/s", "3×10^7 m/s"],
      correctIndex: 1,
    ),
    Quiz(
      id: 46,
      question: "Which planet has the most moons?",
      opts: ["Earth", "Saturn", "Jupiter", "Neptune"],
      correctIndex: 1,
    ),
    Quiz(
      id: 47,
      question: "What is 9 × 12?",
      opts: ["99", "100", "108", "109"],
      correctIndex: 2,
    ),
    Quiz(
      id: 48,
      question: "Who was the first man to walk on the moon?",
      opts: [
        "Yuri Gagarin",
        "Neil Armstrong",
        "Buzz Aldrin",
        "Michael Collins",
      ],
      correctIndex: 1,
    ),
    Quiz(
      id: 49,
      question: "Which animal is known as the Ship of the Desert?",
      opts: ["Horse", "Camel", "Donkey", "Elephant"],
      correctIndex: 1,
    ),
    Quiz(
      id: 50,
      question: "What is the national flower of India?",
      opts: ["Rose", "Lotus", "Sunflower", "Marigold"],
      correctIndex: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${currIndx + 1}/${quizData.length}")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${quizData[currIndx].question}',
              textAlign: TextAlign.justify,
            ),
          ),
          for (int i = 0; i < quizData[currIndx].opts.length; i++)
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepPurple, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text('${quizData[currIndx].opts[i]}'),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed:
                      currIndx == 0
                          ? null
                          : () {
                            if (currIndx > 0) currIndx--;
                            setState(() {});
                          },
                  child: Text('Prev'),
                ),
                ElevatedButton(
                  onPressed:
                      currIndx == 49
                          ? null
                          : () {
                            if (currIndx < 49) currIndx++;
                            setState(() {});
                          },
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
