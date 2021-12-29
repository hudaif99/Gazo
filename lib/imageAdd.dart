import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avengers extends StatefulWidget {
  const Avengers({Key? key}) : super(key: key);

  @override
  _AvengersState createState() => _AvengersState();
}

class _AvengersState extends State<Avengers> {
  List<Images> image = [];
  add(){
    image.add(Images("assets/images/Bruce.png","Bruce Banner", "Incredible superhuman strength, \ndurability, and healing factor.\nBecomes more powerful as anger increases. "));
    image.add(Images("assets/images/Cap.png", "Steve Rogers", "Superhuman Agility.\nSuperhuman Stamina.\nSuperhuman Durability.\nSuperhuman Reflexes.\nSuperhuman Strength."));
    image.add(Images("assets/images/Clint.png", "Clint Barton", "Master archer and marksman \nExpert tactician, \nacrobat and hand-to-hand combatant Using a variety of trick arrows "));
    image.add(Images("assets/images/Nat.png", "Natasha Romanoff", "She is skilled in many forms of martial arts including aikido, judo, karate, savate, and boxing. \nIn addition, she is an amazing gymnast, \nand uses her acrobatics to gain an edge in combat."));
    image.add(Images("assets/images/Tchalla.png", "T'Challa", "The power to draw upon the knowledge, strength and every experience of every previous Black Panther.\nSuperhuman strength, endurance, speed, agility, reflexes, stamina and senses.\nExpert hand-to-hand combatant and martial artist."));
    image.add(Images("assets/images/Thor.png", "Thor Odinson", "Superhuman strength, \nspeed, \ndurability and longevity \nAbilities via Mjolnir, \nInter-dimensional teleportation \nElectricity manipulation \nFlight Weather manipulation "));
    image.add(Images("assets/images/Tony.png", "Tony Stark", "Genius level intellect Proficient scientist and engineer Powered armor suit: \nSupersonic flight Energy repulsor and missile projection Regenerative life support"));
    image.add(Images("assets/images/Vision.png", "Vision", "Superhuman intelligence, strength, speed \nSuperhuman senses \nDensity control  \nFlight Regeneration \nSolar energy projection \nHolographic disguise \nTechnopathy"));
    image.add(Images("assets/images/Wanda.png", "Wanda maximoff", "Reality warping, \nTelepathy, \nLevitation, \nEnergy absorption, \nEnergy projection"));
    image.add(Images("assets/images/Scott.png", "Scott Lang", "Magic😉, \nAbility to shrink to microscopic size, \nAbility to grow really bigger"));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    add();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Avengers")),
      ),
      body: ListView.builder(itemCount: image.length, itemBuilder: (context, index){
        return Container(width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(image[index].images),
                  Container(

                      padding:EdgeInsets.all(15),
                      child:
                      Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(image[index].abilities,style: TextStyle(fontSize: 14),),
                        ],
                      ))
                ],
              ),
              Text(image[index].name, style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),

            ],
          ),

        );
      }),
    );
  }
}

class Images{
  String images;
  String name;
  String abilities;
  Images(this.images, this.name, this.abilities);
}
