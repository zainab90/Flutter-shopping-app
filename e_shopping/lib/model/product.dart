

class Product{

  String _productName, _productPrice,_productImage='';
  int _productId;

  Product(this._productName,this._productImage,this._productPrice);

  String get getProductName{
    return this._productName;
  }

  String get getProductPrice{
    return this._productPrice;
  }


  String get getProductImage{
    return this._productImage;
  }



 // to retrive the data from firebase , we will do that as snapshot
//  Product. fromSnapshot(DataSnapshot myDataSnapShot){
//    //this._productId= myDataSnapShot.key;
//    this._productName=myDataSnapShot.value['name'];
//    this._productPrice=myDataSnapShot.value['price'];
//    this._productImage=myDataSnapShot.value['image'];
//
//  }


List<Product> initailzeProducList(){

//build list of Products Statically
List<Product> myProducts=[
  new Product('Bags', 'assets/images/bag.png', '130 Dollar'),
  new Product('Ring', 'assets/images/rings.png', '400\$'),
  new Product('Necklus', 'assets/images/Necklaces.png', '1050\$'),
  new Product('Purphan', 'assets/images/Perfume.png', '60\$'),
  new Product('Shoes', 'assets/images/shoe.png', '60\$'),
  new Product('Bangles', 'assets/images/bangles.png', '800\$'),
];
return myProducts;

}










}