import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fruity/constants/app_contsants.dart';

class ProductcardNew extends StatelessWidget {
  final Function() ontap;
  final String productName;
  final String productImage;
  final String tag;
  const ProductcardNew(
      {Key? key,
      required this.ontap,
      required this.productName,
      required this.productImage,
      required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      margin: EdgeInsets.all(10),
      style: Appconst.neumorphicStyle,
      onPressed: ontap,
      child: Container(
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            Neumorphic(
              style: NeumorphicStyle(
                depth: 1,
              ),
              child: Hero(
                tag: tag,
                child: Container(
                  height: 95,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Appconst.BackgroundColor,
                    image: DecorationImage(
                      image: AssetImage(productImage),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    '\$ 25 / Kg',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Text(
                    '15% Off',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
