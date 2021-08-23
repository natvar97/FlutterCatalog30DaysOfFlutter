import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailsPage({Key? key, required this.catalog}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.color(Colors.red).make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBluishColor),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              child: "Add to Cart".text.xl.make(),
            ).wh(150, 50),
          ],
        ).p32(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 20.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.lg
                          .color(MyTheme.darkBluishColor)
                          .bold
                          .xl4
                          .make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle!)
                          .make(),
                      10.heightBox,
                      Expanded(
                        child:
                            "Gubergren clita vero aliquyam sadipscing ipsum sit, est rebum et dolores duo et stet nonumy at. Diam clita dolor sanctus ut. Dolor amet consetetur tempor no aliquyam, tempor accusam magna est lorem. Accusam eirmod dolores justo diam gubergren vero no. Kasd elitr erat sadipscing ea sanctus amet elitr et voluptua.."
                                .text
                                .xl
                                .textStyle(context.captionStyle!)
                                .make()
                                .px16(),
                      )
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
