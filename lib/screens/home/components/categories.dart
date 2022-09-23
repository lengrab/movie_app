import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ['In Theather', 'Box Office', 'Comming Soon'];

  @override
  Widget build(BuildContext) {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, int index) => buildPadding(index, context),
      ),
    );
  }

  Padding buildPadding(int index, BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedCategory = index;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: index == selectedCategory
                        ? kTextColor
                        : Colors.black.withOpacity(0.4)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                height: 6,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: index == selectedCategory
                      ? kSecondaryColor
                      : Colors.transparent,
                ),
              )
            ],
          ),
        ));
  }
}
