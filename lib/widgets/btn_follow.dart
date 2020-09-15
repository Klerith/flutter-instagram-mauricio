part of 'widgets.dart';

class BtnSeguir extends StatelessWidget {
  
  final String texto;

  const BtnSeguir({ this.texto });


  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      padding: EdgeInsets.all(0.0),
      child: Ink(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xffFC0B7B), Color(0xff7820AD)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(30.0)
        ),
        child: Container(
          constraints: BoxConstraints( maxWidth: 230.0, minHeight: 55.0),
          alignment: Alignment.center,
          child: Text(
            this.texto,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}