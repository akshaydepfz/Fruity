import 'package:animate_do/animate_do.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fruity/components/custom_icon.dart';
import 'package:fruity/components/label_card.dart';
import 'package:fruity/constants/app_contsants.dart';
import 'package:fruity/database.dart';
import 'package:fruity/widgets/related_products.dart';
import 'package:fruity/screens/cart_screen.dart';
import 'package:get/get.dart';

class ProductView extends StatefulWidget {
  final String productImage;
  final String productName;
  final String tag;
  const ProductView(
      {Key? key,
      required this.productImage,
      required this.productName,
      required this.tag})
      : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int quantity = 1;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appconst.BackgroundColor,
      body: Container(
        margin: EdgeInsets.only(top: 35),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcon(
                    icon: Icons.arrow_back,
                    ontap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Swing(
                    animate: true,
                    child: CustomIcon(
                        icon: isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border_sharp,
                        ontap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        }),
                  )
                ],
              ),
            ),
            Hero(
              tag: widget.tag,
              child: Container(
                height: MediaQuery.of(context).size.height / 3.5,
                child: Image(
                  image: AssetImage(widget.productImage),
                ),
              ),
            ),
            Expanded(
              child: FadeInUp(
                duration: Duration(milliseconds: 900),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    depth: 3,
                    color: Color.fromRGBO(230, 231, 238, 1),
                    intensity: 100,
                    shadowLightColorEmboss: Color.fromRGBO(243, 243, 245, 1),
                    shadowDarkColorEmboss: Color.fromRGBO(195, 196, 201, 1),
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  child: Container(
                    color: Appconst.BackgroundColor,
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 60,
                              height: 4,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TileCard(
                                    label: '5.0 (2k)',
                                    color: Colors.yellow.shade800,
                                    icon: Icons.star),
                                TileCard(
                                    label: '60 cal',
                                    color: Colors.orange.shade800,
                                    icon: Icons.whatshot),
                                TileCard(
                                    label: 'Fry 26,12',
                                    color: Colors.yellow.shade800,
                                    icon: Icons.local_shipping),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.productName,
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Neumorphic(
                                  padding: EdgeInsets.all(3),
                                  style: NeumorphicStyle(
                                      depth: -4,
                                      boxShape: NeumorphicBoxShape.stadium()),
                                  child: Container(
                                    color: Appconst.BackgroundColor,
                                    height: 40,
                                    width: 165,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        NeumorphicButton(
                                          onPressed: () {
                                            if (quantity > 1) {
                                              setState(() {
                                                quantity--;
                                              });
                                            }
                                          },
                                          style: NeumorphicStyle(
                                              depth: 3,
                                              intensity: 100,
                                              shadowLightColorEmboss:
                                                  Color.fromRGBO(
                                                      243, 243, 245, 1),
                                              shadowDarkColorEmboss:
                                                  Color.fromRGBO(
                                                      195, 196, 201, 1),
                                              boxShape:
                                                  NeumorphicBoxShape.circle()),
                                          child: Icon(
                                            Icons.remove,
                                            size: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          '$quantity Kg',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.green),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        NeumorphicButton(
                                          onPressed: () {
                                            setState(() {
                                              quantity++;
                                            });
                                          },
                                          style: NeumorphicStyle(
                                              depth: 3,
                                              intensity: 100,
                                              shadowLightColorEmboss:
                                                  Color.fromRGBO(
                                                      243, 243, 245, 1),
                                              shadowDarkColorEmboss:
                                                  Color.fromRGBO(
                                                      195, 196, 201, 1),
                                              boxShape:
                                                  NeumorphicBoxShape.circle()),
                                          child: Icon(
                                            Icons.add,
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Oranges are a treasure trove of nutrients and protective plant compounds, including vitamins, minerals, and antioxidants. Studies show that consuming oranges regularly may benefit your health in several ways.',
                              style: TextStyle(color: Colors.grey.shade600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Related Products :',
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 18),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 100,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: categories.length,
                                      itemBuilder: (context, index) {
                                        return FadeInRight(
                                            duration: Duration(seconds: 1),
                                            child: RelatedProduct(
                                              image: categories[index]['image'],
                                              name: categories[index]['name'],
                                              onTap: () {
                                                Get.to(ProductView(
                                                  productImage:
                                                      categories[index]
                                                          ['image'],
                                                  productName: categories[index]
                                                      ['name'],
                                                  tag: categories[index]['tag'],
                                                ));
                                              },
                                            ));
                                      }),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Total Price',
                                    style:
                                        TextStyle(color: Colors.grey.shade500),
                                  ),
                                  Text(
                                    '\$ 25.18',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              NeumorphicButton(
                                onPressed: () {
                                  Get.to(CartScreen());
                                },
                                style: NeumorphicStyle(
                                    depth: -4,
                                    color: Colors.green.shade500,
                                    boxShape: NeumorphicBoxShape.stadium()),
                                child: Container(
                                  height: 35,
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Center(
                                    child: Text(
                                      'Add to cart',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
