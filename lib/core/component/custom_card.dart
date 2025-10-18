import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {

  final String cardtitle;
  final String price;
  final String imageUrl;
  final double rating;
  final IconData favicon;
  final IconData addcartIcon;
  final void Function()? onPressedCart;
  final void Function()? onPressedFav;
  final void Function()? onPressedcard;

    CustomCard({
    super.key,
    required this.cardtitle,
    required this.price,
    required this.rating,
    required this.imageUrl,
    required this.favicon,
    required this.addcartIcon,
    this.onPressedCart,
    this.onPressedFav,
    this.onPressedcard,
  });


  @override
  Widget build(BuildContext context) {
   return GestureDetector(
    onTap: onPressedcard,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 550,
         decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(0, 4),
            )
          ]
         ),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16) ,
                      topRight: Radius.circular(16),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit:BoxFit.cover
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: 50,
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(onPressed: onPressedFav,
                       icon: Icon(
                        favicon
                        ),
                        ),
                    ),
                  )
              ],
                ),
  Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: SizedBox(
                  height: 50,
                  child: Text(
                    cardtitle,
                    maxLines: 2,
                    style: TextStyle(
                      color:Colors.black,
                    )
                    
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                        '/$rating',
                        style:TextStyle(
                          color: Colors.black,
                        )
                      ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        '/$price',
                        style:TextStyle(
                          color: Colors.black,
                        )
                      ),
                    ),
                    IconButton(
                      onPressed: onPressedCart,
                      icon: Icon(
                        addcartIcon,
                        color: Colors.green,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),


              ],
         ),
      
      ),
    ),

   );
  }

}
