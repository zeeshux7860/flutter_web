
import 'package:flutter_web/material.dart';
import 'package:hellow_world/account.dart';
import 'package:hellow_world/login.dart';
import 'package:hellow_world/notification.dart';
import 'package:hellow_world/view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter First page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   List<String> imageUrl;

  @override
  void initState() {
    super.initState();
    imageUrl = [
      "http://2.bp.blogspot.com/-VvT5jCrQ8Pc/V58Sh7UReZI/AAAAAAAAAgU/u2aWnSC9TmwhNq9JJ0cWLvd6CmHlaKBOwCK4B/s1600/bean-bag.jpg",
      "https://4.bp.blogspot.com/-dIu9lKiu1Zw/WWCQwSFDS9I/AAAAAAAAAF8/cBHHR2mF3Ks8li5cXPoJ0eNHRm57IXFqQCLcBGAs/s1600/BAG.jpg",
      "https://asifgraphicsdesigner.files.wordpress.com/2017/02/banners-3.jpg",
      "https://images-eu.ssl-images-amazon.com/images/G/31/img15/Luggage/Aug/Vertical/Vertical-banner._V293278371_.jpg"
    ];
  }
   var _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     key: _scaffoldKey,
     floatingActionButton: FloatingActionButton(
       child: new Icon(Icons.add),
       onPressed: (){
        showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Alert Dialog title"),
          content: new Text("Alert Dialog body"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
       },
       backgroundColor: Colors.red,
     ),
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        leading: new IconButton(
          icon: Icon(Icons.menu,color: Colors.black,),
          onPressed: (){
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.notifications_active,color: Colors.black,),
            onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Notifications()));
            },
          )
        ],
      ),
      drawer: Drawer(
      child: new ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pink
            ),
        currentAccountPicture: new CircleAvatar(
          backgroundImage: new NetworkImage("https://getify.in/wp-content/uploads/2019/04/Md-Zeeshan.png"),
        ),
        accountName: new Text("MD Zeeshan"),
        accountEmail: new Text("CtechViral@gmail.com"),
      ),
      new ListTile(
        title: new Text("Account Details"),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Account()));
        },
        ),
      new ListTile(
        title: new Text("Order History"),
        onTap: (){},
        ),
      new ListTile(
        title: new Text("Logout"),
        onTap: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
        },
        ),
        ],
        
      )
      ),
      body: ListView(
          children: <Widget>[
           new Container(
             padding: EdgeInsets.all(20.0),
             height: MediaQuery.of(context).size.height / 1.5,
            color: Colors.pink,
  child: new Center(
    child: Text("Flutter is an open-source mobile application development framework created by Google. It is used to develop applications for Android and iOS, as well as being the primary method of creating applications for Google Fuchsia.",style: TextStyle(color: Colors.white,fontSize: 30.0),),
  )
           ),
           new Divider(
             height: 1.0,
           ),
           new Container(
             padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
             color: Colors.white,
             child: new Center(child: new Text("Top 10",style: TextStyle(fontWeight: FontWeight.bold),),),
           ),
           new Divider(
             height: 1.0,
           ),
           new Container(
             height: MediaQuery.of(context).size.height / 2.3,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: 10,
               itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductView(h: index,title: "Zeeshan",img: 'https://cdn.pixabay.com/photo/2018/02/09/21/46/rose-3142529__340.jpg',)));
                  },
                    child: Card(
                    child: new Column(
                      children: <Widget>[
                        Hero(
                          tag: 'img'+index.toString(),
                          child: new Image.network("https://cdn.pixabay.com/photo/2018/02/09/21/46/rose-3142529__340.jpg",fit: BoxFit.cover,height: MediaQuery.of(context).size.height / 3.0,)),
                        new SizedBox(
                          height: 15.0,
                        ),
                        new Padding(padding: EdgeInsets.all(10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                          new Text("Zeeshan"),
                          new SizedBox(
                            width:120.0
                          ),
                          new Text("10min Ago")
                        ],),)
                      ],
                    )
                  ),
                );
               },
             ),
           )
          ],
        ),
      );
  }
 




}
