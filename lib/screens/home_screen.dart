import 'package:animate_do/animate_do.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fruity/components/custom_icon.dart';
import 'package:fruity/database.dart';
import 'package:fruity/screens/cart_screen.dart';
import 'package:get/get.dart';
import 'package:fruity/widgets/product_card.dart';
import 'package:fruity/screens/product_view.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        margin: EdgeInsets.only(top: 35),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIcon(icon: Icons.segment_sharp, ontap: () {}),
                CustomIcon(
                    icon: Icons.shopping_cart_outlined,
                    ontap: () {
                      Get.to(CartScreen());
                    }),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Neumorphic(
              style: NeumorphicStyle(
                depth: 4,
                color: Colors.grey.shade200,
                boxShape: NeumorphicBoxShape.stadium(),
                shadowDarkColorEmboss: Colors.grey.shade400,
                shadowLightColorEmboss: Colors.white70,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.green,
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Align(
                child: FadeInRight(
                  duration: Duration(seconds: 1),
                  child: TabBar(
                    labelColor: Colors.green,
                    unselectedLabelColor: Colors.grey.shade400,
                    isScrollable: true,
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator:
                        CircleTabIndicator(color: Colors.green, radius: 4),
                    tabs: [
                      Tab(text: 'All'),
                      Tab(text: 'Fruit'),
                      Tab(text: 'Vegitable'),
                      Tab(text: 'Meat'),
                      Tab(text: 'Diary'),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return FadeInDown(
                          duration: Duration(seconds: 1),
                          child: ProductcardNew(
                            ontap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductView(
                                            tag: categories[index]['tag'],
                                            productImage: categories[index]
                                                ['image'],
                                            productName: categories[index]
                                                ['name'],
                                          )));
                            },
                            productImage: categories[index]['image'],
                            productName: categories[index]['name'],
                            tag: categories[index]['tag'],
                          ),
                        );
                      }),
                  ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return ProductcardNew(
                          ontap: () {},
                          tag: categories[index]['tag'],
                          productImage: categories[index]['image'],
                          productName: categories[index]['name'],
                        );
                      }),
                  ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return ProductcardNew(
                          ontap: () {},
                          tag: categories[index]['tag'],
                          productImage: categories[index]['image'],
                          productName: categories[index]['name'],
                        );
                      }),
                  ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return ProductcardNew(
                          ontap: () {},
                          tag: categories[index]['tag'],
                          productImage: categories[index]['image'],
                          productName: categories[index]['name'],
                        );
                      }),
                  ListView.builder(
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return ProductcardNew(
                          ontap: () {},
                          tag: categories[index]['tag'],
                          productImage: categories[index]['image'],
                          productName: categories[index]['name'],
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
