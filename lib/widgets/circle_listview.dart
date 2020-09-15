part of 'widgets.dart';

class CircleListView extends StatelessWidget {

  final data = [
    {
      'image': 'assets/avatars/av-1.png',
      'text': ''
    },
    {
      'image': 'assets/avatars/av-2.png',
      'text': 'Mejores fotos'
    },
    {
      'image': 'assets/avatars/av-3.png',
      'text': 'Mis cosas'
    },
    {
      'image': 'assets/avatars/av-4.png',
      'text': 'Chidos'
    },
    {
      'image': 'assets/avatars/av-5.png',
      'text': 'Cosas equis'
    },
  ];



  @override
  Widget build(BuildContext context) {

    return Container(
      height: 120,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {

          // Determinar si es la primera para colocar el add

          return (index == 0 )
           ? _BubbleHistoryPlus()
           : _BubbleHistory( data[index] );

        },
      ),
    );
  }
}


// Bubble user with plus
class _BubbleHistoryPlus extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.only( left: 15 ),
      child: Stack(
        children: [
          
          CustomAvatarCircle( 
            greyBorder: true,
            small: true,
            imagePath: 'assets/avatars/av-1.png',
          ),
          
          // Button Add
          Positioned(
            top: 61,
            left: 25,
            child: Container(
              width: 30,
              height: 30,
              child: Icon( FontAwesomeIcons.plus, size: 12, color: Colors.white ),
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).scaffoldBackgroundColor, width: 2),
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xffFC0B7B),
                    Color(0xff7820AD),
                  ]
                )
              ),
            ),
          )

        ],
      ),
    );
  }
}

// Bubble for everybody
class _BubbleHistory extends StatelessWidget {

  final dynamic data;

  const _BubbleHistory( this.data );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.only( left: 15 ),
      child: Column(
        children: [
          
          CustomAvatarCircle( 
            greyBorder: false,
            small: true,
            imagePath: data['image'],
          ),

          SizedBox( height: 5 ),

          // Text
          Text( data['text'] , style: TextStyle( fontSize: 11, color: Color(0xff737476) ),)
        ],
      ),
    );
  }
}