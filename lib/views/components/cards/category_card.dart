import 'package:flutter/material.dart';
import 'package:pt_project_1/models/category.dart';

// design boxes in category tab
class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({Key key, @required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: category.color, borderRadius: BorderRadius.circular(5)),
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width / 2,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: Image(
                image: AssetImage(category.icon),
                height: 50,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(category.name,
                    style: TextStyle(
                      color: Colors.white, // color of text in category screen
                      fontSize: 30,
                    ))),
          )
        ],
      ),
    );
  }
}
