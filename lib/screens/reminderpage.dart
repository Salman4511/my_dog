import 'package:flutter/material.dart';
import 'package:flutter_my_dog/screens/adddogscreen.dart';

class reminderScreen extends StatelessWidget {
  const reminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              // SizedBox(height: 30,),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Hero(
                    tag: kBackBtn,
                    child: Card(
                      color: Colors.blue,
                      elevation: 10,
                      shape: kBackButtonShape,
                      child: MaterialButton(
                        height: 50,
                        minWidth: 50,
                        elevation: 10,
                        shape: kBackButtonShape,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: kBackBtn,
                      
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 50,
                  // ),
                 Hero(
                    tag: 'title',
                    transitionOnUserGestures: true,
                    child: Card(
                      color: Colors.blue,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: InkWell(
                        
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          height: 50,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'Reminders',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Padding(
  padding: const EdgeInsets.only(top: 40),
  child: Container(
    height: 180,
    width: 350,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color.fromARGB(255, 203, 203, 203),
    ),
    child: Column(
      children: [
        SizedBox(height: 10,),
        Text(
          'Reminder Types',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => addDog()),
                );
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 243, 220, 151),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Image.network('https://cdn-icons-png.flaticon.com/128/4191/4191422.png', scale:2,),
                    ),
                    Text('vaccine', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => addDog()),
                );
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 249, 164, 151),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.network('https://cdn-icons-png.flaticon.com/128/655/655968.png', scale:2.5,),
                    ),
                    Text('medicine', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                  ],
                ),
              ),
            ),
             InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => addDog()),
                );
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 204, 122),
                  borderRadius: BorderRadius.circular(9),
                ),
                child:  Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Image.network('https://cdn-icons-png.flaticon.com/128/4787/4787175.png', scale:2.2,),
                    ),
                    Text('others', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
),
Padding(
  padding: const EdgeInsets.only(top: 10),
  child:   Container(
  
    height: 330,
  
    width:350 ,
  
    decoration: BoxDecoration(
  
      color: Color.fromARGB(255, 203, 203, 203),
  
      borderRadius: BorderRadius.circular(20)
  
    ),
    child: Column(
      children: [
        SizedBox(height: 10,),
        Text(
          'Reminder List',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  
  ),
  
),
Padding(
  padding: const EdgeInsets.only(top: 20),
  child:   ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.add,color: Colors.black ,), label: Text('Add Reminder',
  style:TextStyle(
    color: Colors.black 
  ) ,),
  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue))  ,),
)
            ]
          )
          ,)
          ,)
    );
  }
}

ShapeBorder kBackButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
  ),
);

Widget kBackBtn = Icon(
  Icons.arrow_back_ios,
  color: Colors.black54,
);