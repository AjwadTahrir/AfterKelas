import 'package:afterkelas/Components/booking_tiles.dart';
import 'package:afterkelas/Pages/Student_page/Cart_page.dart';
import 'package:afterkelas/model/cart_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown[300],
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CartPage();
        })),
        child: Icon(Icons.shopping_bag_outlined, color: Colors.white,),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),
          SizedBox(height: 10),
          Padding(
            child: Text(
              "Lets book some classes for you,",
              style: GoogleFonts.dmSerifDisplay(fontSize: 30,
              height:1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text("Classes Available",
            style:GoogleFonts.dmSerifDisplay(
              color: Colors.black,
              fontSize:20
            )),
          ),
          Expanded(child: Consumer<CartModel>(builder: (context, value, child) {
            return GridView.builder(
                padding: EdgeInsets.all(12),
                itemCount: value.shopItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                itemBuilder: (context, index) {
                  return BookingClassTile(
                    Color: value.shopItems[index][0],
                    subject: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    price: value.shopItems[index][3],
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addItemToCart(index);
                    },
                  );
                });
          })),

         

    
          ],)
  

      
    );
  }
}
