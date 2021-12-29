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
    image.add(Images("assets/images/Bruce.png"));
    image.add(Images("assets/images/Cap.png"));
    image.add(Images("assets/images/Clint.png"));
    image.add(Images("assets/images/Nat.png"));
    image.add(Images("assets/images/Tchalla.png"));
    image.add(Images("assets/images/Thor.png"));
    image.add(Images("assets/images/Tony.png"));
    image.add(Images("assets/images/Vision.png"));
    image.add(Images("assets/images/Wanda.png"));
    image.add(Images("assets/images/Scott.png"));
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
        return Container(
          margin: EdgeInsets.all(10),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image[index].images),
            ],
          ),
        );
      }),
    );
  }
}

class Images{
  String images;
  Images(this.images);
}