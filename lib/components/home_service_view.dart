import 'package:flutter/material.dart';
import 'package:smart_home_neomorphism_app/models/service.dart';

class HomeServiceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Wrap(
        direction: Axis.horizontal,
        children: _buildHomeServiceMenu(context),
      ),
    );
  }

  List<Padding> _buildHomeServiceMenu(BuildContext context) {
    final services = Service.getHomeService();
    return List.generate(
      4,
      (index) => Padding(
        padding:
            const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: 8.0),
        child: _buildContainer(index, context, services[index]),
      ),
    );
  }

  Container _buildContainer(int index, BuildContext context, Service service) {
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

    return Container(
      padding: const EdgeInsets.all(10.0),
      height: MediaQuery.of(context).size.height / 6,
      width: MediaQuery.of(context).size.width / 2.8,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(service.icon, color: Colors.blueGrey,),
                ClipOval(
                  child: Container(height: 10.0, width: 10.0, color: service.status ? Colors.pinkAccent[700] : Theme.of(context).primaryColor,),
                ),
              ],
            ),
            Text(
              service.name,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: borderRaidus,
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            color: Colors.black12,
            blurRadius: 3,
          ),
          BoxShadow(
            offset: Offset(-3, -3),
            color: Colors.white,
            blurRadius: 3,
          ),
        ],
      ),
    );
  }
}
