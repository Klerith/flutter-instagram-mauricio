part of 'widgets.dart';

class CustomAvatarCircle extends StatelessWidget {

  final bool greyBorder;
  final bool small;
  final String imagePath;

  const CustomAvatarCircle({ 
    this.greyBorder = false, 
    this.small = false, 
    @required this.imagePath 
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        // width: 160,
        // height: 160,
        child: Padding(
          padding: EdgeInsets.all( this.small ? 3 : 5 ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image(image: AssetImage( this.imagePath )),
          )
        ),
        decoration: BoxDecoration(
          color: this.greyBorder ? Color(0xffE8E8E8) : null,
          gradient: this.greyBorder 
          ? null  
          : LinearGradient(
              begin: Alignment.topCenter,
              colors: <Color>[
                Color(0xffFC0B7B),
                Color(0xff7820AD),
              ]
            )
        ),
      ),
    );
  }
}