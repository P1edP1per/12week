import 'package:flutter/material.dart';
import 'package:lab_12/map/map.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  Size size = Size(0, 0);

  late List<bool> isSelected = [true, false];
  int productId = 0;

  void onPressedToggleButton(int index) {
    for (int i = 0; i < isSelected.length; i++) {
      setState(() {
        isSelected[i] = i == index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 15),
            Center(
              child: ToggleButtons(
                fillColor: Color(0xff47536D),
                selectedColor: Colors.white,
                borderRadius: BorderRadius.circular(10),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Text(
                      'Список',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Text(
                      'На карте',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
                onPressed: (int index) {
                  onPressedToggleButton(index);
                },
                isSelected: isSelected,
              ),
            ),
            SizedBox(height: 10),
            isSelected[0] ? Container() : MapPage()
            // Map
          ],
        )
      ],
    );
  }
}
