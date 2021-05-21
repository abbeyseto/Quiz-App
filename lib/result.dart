// import 'package:flutter/material.dart';

// class Result extends StatelessWidget {
//   final int resultScore;
//   final Function reset;
//   Result(this.resultScore, this.reset);

//   String get resultPhrase {
//     String resultText =
//         "Yayy.... Your final score is " + resultScore.toString() + ". ";

//     if (resultScore <= 8) {
//       resultText += "You are awesome";
//     } else if (resultScore <= 12) {
//       resultText += "Pretty Likable";
//     } else {
//       resultText += "Super dupper star you are";
//     }
//     return resultText;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text(
//           resultPhrase,
//           style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87),
//           textAlign: TextAlign.center,
//         ),
//         TextButton(
//           style: TextButton.styleFrom(
//             textStyle: const TextStyle(fontSize: 25),
//           ),
//           child: Text("Restart Quiz"),
//           onPressed: () => reset(),
//         ),
//       ],
//     );
//   }
// }
