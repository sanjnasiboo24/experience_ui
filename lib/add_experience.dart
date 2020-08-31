import 'package:flutter/material.dart';

class AddExperience extends StatefulWidget {
  @override
  _AddExperienceState createState() => _AddExperienceState();
}

class _AddExperienceState extends State<AddExperience> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131132),
      appBar: AppBar(
        backgroundColor:Color(0xff131132),
        title: Text('Write Your Experience',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500,letterSpacing: 1),),
        centerTitle: true,

      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              child: Text('Write Your Experience in Malpe Beach',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        Padding(
          padding: EdgeInsets.only(left: 20),
       child: Container(
         child: TextFormField(
           decoration: InputDecoration(
             hintText: 'Type Something here..',
             hintStyle: TextStyle(color: Colors.white70,fontSize: 20,fontWeight: FontWeight.w500)
           ),
         ),
       ),
     ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: FlatButton(
              child: Container(
                height:50,
                width: 200,
                decoration: BoxDecoration(
                  color: Color(0xffFC2E7E),
                  borderRadius: BorderRadius.circular(20),
//                    gradient: LinearGradient(
//                        colors: [Color(0xFFDADFF0),Colors.grey],
//                        begin: Alignment.bottomRight,
//                        end: Alignment.topLeft
//                    )
                ),
                child: Center(child: Text('SUBMIT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
