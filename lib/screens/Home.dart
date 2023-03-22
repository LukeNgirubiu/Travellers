import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelapp/Widgets/Components.dart';
import 'package:travelapp/data/data.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    String description="We offer you with the best tours ever across the globe."
    +" Try us for once we never dissappoint.";
    return Scaffold(
         body:AnnotatedRegion<SystemUiOverlayStyle>(
          value:  const SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(255, 238, 238, 238),
            systemNavigationBarColor: Color.fromARGB(255, 238, 238, 238),
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
      ),
           child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
            child: Column(
            children: [
              SizedBox(
                height: height*0.188,
                width: width,
                child: Column(children:[
                  Container(
               width: width,
               padding:const EdgeInsets.fromLTRB(20, 40, 0, 0),
              child: const Text("Travellers",style: TextStyle(
                      fontSize:26,
                      color: Color.fromARGB(255, 80, 76, 76),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto'
                    ),
                    )
             ),
               Container(
               width: width,
               padding:const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Text(description,style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 61, 60, 60),
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Roboto'
                    ),
                    )
             )
             ,
            Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(20, 11, 0, 1),
            child:const Text("Tour site",style:TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 80, 76, 76),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto'
                    ),
                    ),
            )
                ]),
              )
             ,
             SizedBox(
              height: height*0.4,
               child: ListView(
                scrollDirection: Axis.horizontal,
                 children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TourItem(height: height, width: width, index: 0, details:  sites[0], rate: 4.65),
                    TourItem(height: height, width: width, index: 1, details:  sites[1], rate: 4.6),
                    TourItem(height: height, width: width, index: 2, details:  sites[2], rate: 4.5),
                    TourItem(height: height, width: width, index: 3, details:  sites[3], rate: 4.5),
                    TourItem(height: height, width: width, index: 4, details:  sites[4], rate: 4.3),
                    TourItem(height: height, width: width, index: 5, details:  sites[5], rate: 4.25),
                    TourItem(height: height, width: width, index: 6, details:  sites[6], rate: 3.5),
                    ],
                 ),
                 ],
               ),
             ),
               SizedBox(
              height: height*0.048,
              width: width,
              child:Container(
                  margin: const EdgeInsets.only(left: 20, top: 10),
                 child: const Text("Travel Cities",style:TextStyle(
                      fontSize: 22,
                      color: Color.fromARGB(255, 80, 76, 76),
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto'
                    ),
                    ),
              )
               ),
             
             /* 
             continents
             SizedBox(
              height: height*0.04,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                       ContinentsWidget(height: height,continent: continents[0]),
                      ContinentsWidget(height: height,continent: continents[1]),
                      ContinentsWidget(height: height,continent: continents[2]),
                      ContinentsWidget(height: height,continent: continents[3]),
                      ContinentsWidget(height: height,continent: continents[4]),
                      ContinentsWidget(height: height,continent: continents[5]),
                    ],
                  )
                ],
              )
             ),*/
             Padding(
               padding: const EdgeInsets.only(top: 5),
               child: SizedBox(
                height: height*0.358, 
                child: ListView.builder(
                  padding: EdgeInsets.zero,//Removing the defualt Listview padding
                  itemCount: 3,
                  itemBuilder: (context, index){
                    return  City(width: width, destiny: destinations[index],);
                })
               ),
             )
         
            ],
            ),
           ),
         ),
    );

  }
}


