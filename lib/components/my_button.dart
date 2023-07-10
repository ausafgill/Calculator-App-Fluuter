import 'package:flutter/material.dart';


// class MyButton extends StatefulWidget {
//   final String title;
//   final Color color;
//   const MyButton({super.key, required this.title,  this.color= const Color(0xffa5a5a5)});
//
//   @override
//   State<MyButton> createState() => _MyButtonState();
// }
//
// class _MyButtonState extends State<MyButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//
//       ),
//
//     );
//   }
// }

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyButton({super.key ,required this.title,  this.color= const Color(0xffa5a5a5),
   required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color

            ),
            child: Center(child: Text(title,style: TextStyle(color: Colors.white,fontSize: 20),)),

          ),
        ),
      ),
    );
  }
}
