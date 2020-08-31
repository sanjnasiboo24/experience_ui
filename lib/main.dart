import 'package:flutter/material.dart';
import 'package:flutteristechatexperience/add_experience.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Experience(),
  ));
}

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {

  var names = ['Person 1','Person 2','Person 3','Person 4'];
  var email = ['Email 1','Email 2','Email 3','Email 4'];
  var likes = ['300','350','400','450'];
  var date = ['6/8/2020','7/8/2020','8/8/2020','9/8/2020'];
  String experience='One of the most happening beach in the region. Located around 8 km from udupi.\nBest time to visit is Nov-Feb,otherwise its going to be really hot out there';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131132),
      appBar: AppBar(
        backgroundColor:Color(0xff131132),
        title: Text('EXPERIENCE',style:GoogleFonts.aBeeZee(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600)),),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,size: 25,color: Colors.white,),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search,size: 25,color: Colors.white,),
          ),
        ],
      ),
      body: ListView.builder(
            shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context,index){
              return Column(
                children: <Widget>[
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width-50,
                    decoration: BoxDecoration(
                      color: Color(0xff1D1D3E),
                      borderRadius: BorderRadius.circular(20),
//                        gradient: LinearGradient(
//                            colors: [Color(0xFFDADFF0),Colors.grey],
//                            begin: Alignment.bottomRight,
//                            end: Alignment.topLeft
//                        )
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.more_horiz,color: Colors.white,size: 18,),
                              onPressed: (){

                              },
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                      height: 75,
                                      // width: MediaQuery.of(context).size.width-300,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                              colors: [Color(0xFFDADFF0),Colors.white],
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight
                                          ),
                                        image: DecorationImage(
                                          image: AssetImage('images/profile.jpg'),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  ),
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(names[index],style: GoogleFonts.lato(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(email[index],style:GoogleFonts.lato(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(date[index],style:GoogleFonts.lato(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.favorite_border,color: Colors.white,size: 35,),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(likes[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(experience,style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              );
              }
          ),
     persistentFooterButtons: <Widget>[
      FlatButton(
        child: Container(
          height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [Color(0xFFDADFF0),Colors.white],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 2,
                ),
              Center(child: Text(' Write Your Experience ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 20),)),
              Icon(Icons.add,color: Colors.black,),
                SizedBox(
                  width: 2,
                )
              ],
            )
      ),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context)=>AddExperience()
          ));
        },
      )
     ],
    );
  }
}

