import 'package:flutter/material.dart';
import 'package:unit_converter/category.dart';

// TODO: Check if we need to import anything

// TODO: Define any constants
final _backgroundColor = Colors.green[100];

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.
    final categories = <Category>[];
    for (int x = 0; x < _categoryNames.length; x++) {
      categories.add(Category(
        name: _categoryNames[x],
        color: _baseColors[x],
        iconLocation: Icons.cake,
      ));
    }

    // TODO: Create a list view of the Categories
    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.all(16.0),
      child: _buildCategoryWidgets(categories),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        "Unit Converter",
        style: TextStyle(color: Colors.black, fontSize: 30.0),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
