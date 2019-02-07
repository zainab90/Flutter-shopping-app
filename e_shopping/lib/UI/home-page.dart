
import 'package:flutter/material.dart';
import 'package:e_shopping/model/product.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new StateOfHome();
  }

}

class StateOfHome extends State<HomePage>{
  List <Product> myProductsList= [];
  Product p= new Product('','','');




  List<Card> _buildCardsStatcically(int noOfCards){
    // this method return a list of Cards (widgets)
    // and to generate this list , we use  a List.generate() method

    myProductsList= p.initailzeProducList();// this method is used to build list of Product (objects) (statically)
    List<Card>  cardsList= List.generate(noOfCards,
        (int index){
      return Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top:8.0)),
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset(myProductsList[index].getProductImage),
            ),
            SizedBox(height: 12.0,),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('${myProductsList[index].getProductName}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
                  SizedBox(height: 8.0),
                  Text('${myProductsList[index].getProductPrice}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10.0),),

                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.sentiment_neutral, size:25.0,),onPressed: (){print('neutral');},color: Colors.yellow.shade400,),
                  IconButton(icon: Icon(Icons.sentiment_very_satisfied, size:25.0,), onPressed: ()=> print('very_satisfied'),color: Colors.yellow),
                  IconButton(icon: Icon(Icons.sentiment_very_dissatisfied,size:25.0, ), onPressed:()=> print('very_dissatisfied'),),
                ],
              ),
            )

          ],
        ),
      );




        });

return cardsList;


  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
backgroundColor: Colors.yellow.shade50,
      appBar: AppBar(
        leading: new IconButton(icon: Icon(Icons.menu, semanticLabel: 'menu',), onPressed:() {
          print('pressed menu');
        }
        ),
        title: Text('SHERIN'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, semanticLabel: 'Search',), onPressed: (){}),
          new IconButton(icon: Icon(Icons.tune, semanticLabel: 'filter',), onPressed: (){}),

        ],
      ),

      body:GridView.count(
        crossAxisCount: 2,
      padding: EdgeInsets.all(12.0),
      childAspectRatio: 10.0/13.0,
        children: _buildCardsStatcically(6),
      )
    );
  }


}
