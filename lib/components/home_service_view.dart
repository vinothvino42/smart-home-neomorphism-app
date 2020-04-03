import 'package:flutter/material.dart';

class HomeServiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.orange,
      child: Wrap(
        direction: Axis.horizontal,
        children: _buildHomeServiceMenu(context),
      ),
    );
  }

  List<Padding> _buildHomeServiceMenu(BuildContext context) {
    return List.generate(
      4,
      (index) => Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
        child: _buildMenu(index, context),
      ),
    );
  }

  ClipRRect _buildMenu(int index, BuildContext context) {
    BorderRadius borderRaidus;

    switch (index) {
      case 0:
        borderRaidus = BorderRadius.only(topLeft: Radius.circular(15.0));
        break;
      case 1:
        borderRaidus = BorderRadius.only(topRight: Radius.circular(15.0));
        break;
      case 2:
        borderRaidus = BorderRadius.only(bottomLeft: Radius.circular(15.0));
        break;
      default:
        borderRaidus = BorderRadius.only(bottomRight: Radius.circular(15.0));
    }

    return ClipRRect(
      borderRadius: borderRaidus,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(10.0),
          color: Colors.green,
          boxShadow: [
            BoxShadow(
              offset: Offset(-3, -3),
              color: Colors.black12,
              blurRadius: 5,
            ),
            BoxShadow(
              offset: Offset(3, 3),
              color: Colors.orange,
              blurRadius: 5,
            ),
          ],
        ),
      ),
    );
  }
}
