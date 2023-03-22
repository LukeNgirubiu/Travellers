import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travelapp/modals/Modals.dart';
class TourItem extends StatelessWidget {
  final double height;
  final double width;
  final List<String> details;
  final int index;
  final double rate;
  const TourItem({super.key,
  required this.height,
   required this.width,
   required this.index,
   required this.details,
   required this.rate
  });

  @override
  Widget build(BuildContext context) {
    double cardWidth=width*0.7;
    return Padding(
                padding: const EdgeInsets.all(5),
                child: Material(
                  elevation: 5,
                  borderRadius: const BorderRadius.all(Radius.circular(14)),
                  child: SizedBox(
                    width: cardWidth,
                    height: 0.4*height,
                    child: Column(
                    children: [
                      ClipRRect(
                        borderRadius:const BorderRadius.only(topLeft: Radius.circular(14),
                        topRight: Radius.circular(14),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                        ),
                        child: Image.asset(details[0],
                        fit: BoxFit.cover,
                         width: cardWidth,
                        height: 0.21*height
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                     margin: const EdgeInsets.fromLTRB(10, 8, 0, 2),
                     child:Text(details[1],style:const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 94, 92, 92),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Roboto'
                      ),
                     ),
                    ),
                   Container(
                        alignment: Alignment.topLeft,
                     margin: const EdgeInsets.fromLTRB(10, 8, 0, 2),
                     child:Text(details[2],style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 94, 92, 92),
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'
                     ),
                   ),
                  ),
                  Row(
                    children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 3),
                      width: cardWidth*0.5,
                      height:height*0.04,
                      child: RatingBarIndicator(
                          rating: rate,
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                             color: Colors.amber,
                           ),
                           itemCount: 5,
                           itemSize: height*0.03,
                           direction: Axis.horizontal,
                            )
                     ),
                     InkWell(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, '/destiny',arguments: Rater(rate: rate, index: index));
                      },
                       child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 10, 0, 3),
                        width: cardWidth*0.35,
                        height:height*0.05,
                        decoration:const BoxDecoration(
                          color: Color.fromARGB(255, 80, 80, 80),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: const Center(
                          child: Text("Details",style: TextStyle(
                                         fontSize: 18,
                                         color: Colors.white,
                                         fontWeight: FontWeight.w400,
                                         fontFamily: 'Roboto'
                       ),
                        ),
                                        ),),
                     )
                     
                    ],

                  )
                    ],
                    ),
                  ),
                ),
              );
  }
}

class City extends StatelessWidget {
  const City({
    super.key,
    required this.width,
    required this.destiny
  });
  final double width;
  final Destined destiny;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        elevation: 2,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: SizedBox(
          height: 120,
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
              borderRadius:const BorderRadius.only(topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              ),
              child: Image.asset(destiny.imageString,
              fit: BoxFit.cover,
               width: width*0.3,
              height: 120
              ),
            ),
            SizedBox(
                width: width*0.45,
              height: 120,
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 15,top: 10),
                  child: Text(destiny.destination,style: const TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 94, 92, 92),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'
                     ),
                    ),
                ),
                 Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 15,top: 5),
                  child: Text(destiny.description,style: const TextStyle(
                           fontSize: 16,
                           color: Color.fromARGB(255, 94, 92, 92),
                           fontWeight: FontWeight.w400,
                           fontFamily: 'Roboto'
                     ),
                    ),
                )
              ],),
            ),
             SizedBox(
                width: width*0.22,
              height: 120,
              child:Container(
                padding: const EdgeInsets.only(left: 15),
                 decoration:const  BoxDecoration(
                  color: Color.fromARGB(255, 133, 131, 131)
                 ),
                child:Center(child: Text("US \$ ${destiny.ticket.toString()}",style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'
                     ),
                    )),
              )
              )
          ])
        ),
      ),
    );
  }
}
class ContinentsWidget extends StatelessWidget {
    final double height;
  final String continent;
  const ContinentsWidget({
    super.key,
    required this.height,
    required this.continent,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print("Continent is $continent"),
      child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      padding: const EdgeInsets.only(right: 5,left: 5),
                      height: height*0.035,
      decoration:const BoxDecoration(
           color: Color.fromARGB(255, 48, 47, 47),
           borderRadius: BorderRadius.all(Radius.circular(10))
         ),
         child: Center(
           child: Text(continent,style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto'
                     ),
                    ),
                 ),
                    ),
    );
  }
}
