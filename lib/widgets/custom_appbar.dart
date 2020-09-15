part of 'widgets.dart';

class CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only( top: 10 ),
        padding: EdgeInsets.symmetric( horizontal: 20 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Container(
                width: 25,
                height: 25,
                child: Image(image: AssetImage('assets/icons/circle-plus.png')),
              ),
              onTap: () {},
            ),

            InkWell(
              child: Container(
                width: 25,
                height: 25,
                child: Image(image: AssetImage('assets/icons/msg.png')),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}