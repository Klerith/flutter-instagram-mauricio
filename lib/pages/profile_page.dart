import 'package:flutter/material.dart';
import 'package:instagram2/widgets/widgets.dart';


class ProfilePage extends StatelessWidget {

  static String name = 'profile';


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          
          // Main container of this page
          Column(
            children: [

              // Central image, name, till follow button
              _ProfileContainer(),

              // List of circles
              Container(
                margin: EdgeInsets.only( top: 30 ),
                child: CircleListView(),
              ),
              


            ],
          ),

          // Button Add + Message
          CustomAppBar(),

        ],
      )
   );
  }
}

class _ProfileContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      
      // Sombra del contenedor y bordes
      padding: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only( 
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40)
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0, -15),
            blurRadius: 10,
            spreadRadius: 30,
          )
        ]
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          // Circle Avatar
          Container(
            margin: EdgeInsets.only( top: 50 ),
            child: Center(child: CustomAvatarCircle(
              imagePath: 'assets/avatars/av-1.png',
            ))
          ),

          // Textos
          Container(
            margin: EdgeInsets.only( top: 10 ),
            child: Text('Mauricio López', style: TextStyle( fontSize: 30, fontWeight: FontWeight.w700 )),
          ),

          // Detalles
          Container(
            margin: EdgeInsets.only( top: 5 ),
            child: Text('🖱 Diseño ui/ux y Fotografía 📷 Zihuatenejo, México', style: TextStyle( fontSize: 13 )),
          ),

          // HashTags
          Text('#LifeStyle #Design #Photography #Urban #Art', style: TextStyle( fontSize: 13, color: Color(0xff515BD4) )),


          // Post, Followers, Following
          Container(
            margin: EdgeInsets.only( top: 20 ),
            padding: EdgeInsets.symmetric( horizontal: 10 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                NumberTextbox( number: '735', text: 'Post' ),
                NumberTextbox( number: '876', text: 'Seguidores' ),
                NumberTextbox( number: '568', text: 'Siguiendo' ),

              ],
            ),
          ),

          // Boton Seguir
          Container(
            margin: EdgeInsets.only( top: 20 ),
            child: BtnSeguir( texto: 'Seguir' ),
          )


        ],
      ),
    );
  }
}