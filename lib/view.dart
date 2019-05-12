import 'package:flutter_web/material.dart';

class ProductView extends StatefulWidget {
  final h;
  final title;
  final img;
  ProductView({this.h,this.title,this.img});
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
      
    return new Scaffold(
      backgroundColor: Colors.white,
    body:  new ListView(
        
        children: <Widget>[
           Hero(
                tag: 'img'+ widget.h.toString(),
                child: new Container(
                height: MediaQuery.of(context).size.height / 3.0,
                decoration: BoxDecoration(
                image: DecorationImage(
                image: NetworkImage(widget.img.toString()),
                fit: BoxFit.cover
                )
                ),
              ),
            ),
          new ListTile(
          
          title: new Text("Banya ki Dukan",),
          subtitle: new Text("Lal maidan belgachia kolkata 700037"),
          trailing: new CircleAvatar(
            backgroundColor: Colors.pink,
            child: new Text("Z",style: TextStyle(color: Colors.white),),
          ),
        ),
        new Divider(
          height: 1.0,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2.0,
          child: new Column(
         
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.all(10.0),
                child: new Text("Sugar",style: TextStyle(fontSize: 25.0),),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: new Text("A favourite comfort food, Instant Khichdi Mix brings you a convenient and healthy food choice when you are on the move. Each region in India has its own popular version of this dish. Our recipe uses various types of spices to make it extra yummy. It is packed with the goodness of rice and moong dal. ",textAlign: TextAlign.center,),
              ),
             
            ],
          ),
        )
        ],
      ),
         floatingActionButtonLocation: 
      FloatingActionButtonLocation.centerFloat,
    floatingActionButton: FloatingActionButton.extended(
      elevation: 4.0,
      icon: const Icon(Icons.arrow_back),
      label: const Text('Go To back'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
   
    );
  }
}