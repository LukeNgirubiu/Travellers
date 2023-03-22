
import 'package:flutter/material.dart';
import 'package:travelapp/modals/Modals.dart';

import '../data/data.dart';
class Destiny extends StatefulWidget {
  const Destiny({super.key});

  @override
  State<Destiny> createState() => _DestinyState(); 
}

class _DestinyState extends State<Destiny> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    final rater= ModalRoute.of(context)!.settings.arguments as Rater;
    List<String> data=sites[rater.index];
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey[200]
        ),
        ////"assets/hill_background.jpg"
        child: Stack(alignment: Alignment.topCenter,
        children: [
            Container(
              width: width,
              height: height*0.7,
              decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage(data[0]),
              fit: BoxFit.cover,
              opacity: 0.8)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                    Container(
                      padding: const EdgeInsets.only(top: 50,left: 15),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        child: const CircleAvatar(
                        radius: 25,
                        backgroundColor:Color.fromARGB(255, 167, 166, 166),
                        child: Icon(Icons.arrow_back_ios_outlined,color: Colors.white,),
                        ),
                      ) ,
                    ), 
                        Container(
                          margin: const EdgeInsets.only(top: 50,right: 5),
                          padding: const EdgeInsets.only(right: 5,top: 5, bottom: 5),
                          width: width*0.22,
                          decoration:const BoxDecoration(
                            color:Color.fromARGB(255, 167, 166, 166),
                            borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                         const Icon(Icons.star_rounded,color: Colors.amber,size: 35,),
                          Text(rater.rate.toString(),style:const TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto'
                      ),
                     )
                        ],
                      ),
                    )  
              ]),
            ),
            Positioned(
              bottom: 0,
              height:height*0.31,
              width: width,
              child: Container(
               decoration: const BoxDecoration(
                color: Color.fromARGB(255, 238, 238, 238),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
               ),
               child: Container(
                  margin: const EdgeInsets.only(top: 20,left: 15, right: 20),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Text(data[1],style: const TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 80, 76, 76),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto'
                      ),
                      ),
                       const SizedBox(
                        height: 10,
                      ),
                       Text(data[2],style: const TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 80, 76, 76),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto'
                      ),
                      ),
                        SizedBox(
                        height: height*0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                               InkWell(
                      onTap: (){
                      },
                       child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 3),
                        width: width*0.35,
                        height:height*0.055,
                        decoration:const BoxDecoration(
                          color: Color.fromARGB(255, 80, 80, 80),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: const Center(
                          child: Text("Book",style: TextStyle(
                                         fontSize: 22,
                                         color: Colors.white,
                                         fontWeight: FontWeight.w600,
                                         fontFamily: 'Roboto'
                       ),
                        ),
                                        ),),
                     ),
                          Container(    
                            alignment: Alignment.bottomLeft,
                            margin: const EdgeInsets.only(top: 15),  
                          child: const Text("US\$ 45000",style: TextStyle(
                        fontSize: 22,
                        color: Color.fromARGB(255, 80, 76, 76),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto'
                      ),
                         )
                         )
                        ],
                      )
                   ],
                 ),
               ),
            )
            )
        ],),
      ),
    );
  }
}