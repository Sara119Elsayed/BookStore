class HomeModel {

final String author,image,name,pageCount,price,publisher,title;


HomeModel({
  required this.author,
  required this.name,
  required this.price,
  required this.publisher,
  required this.image,
  required this.pageCount,
  required this.title
});


 Map<String, dynamic> toJson() {
    return {
      'author': author,
      'name': name,
      'price': price,
      'publisher': publisher,
      'image':image,
      'pageCount':pageCount,
      'title':title
    };
  }
   
  
   

}