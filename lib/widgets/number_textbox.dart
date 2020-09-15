part of 'widgets.dart';

class NumberTextbox extends StatelessWidget {
  
  final String number;
  final String text;

  const NumberTextbox( { this.number, this.text });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
           Text( number, style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold ) ),
           Text( text, style: TextStyle( fontSize: 14, fontWeight: FontWeight.w200  ) )
        ],
      )
    );
  }
}