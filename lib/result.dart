// import 'package:flutter/material.dart';

// class Result extends StatelessWidget {
//   final int resultScore;
//   final Function reset;
//   Result(this.resultScore, this.reset);

//   String get resultPhrase {
//     String resultText = "Yayy.... You did it, ";

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
//     return Center(
//       child: Column(
//         children: <Widget>[
//           Text(
//             resultPhrase,
//             style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.green[400]),
//             textAlign: TextAlign.center,
//           ),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               primary: Colors.blue,
//             ),
//             child: Text("Restart Quiz"),
//             onPressed: () => reset(),
//           ),
//         ],
//       ),
//     );
//   }
// }
