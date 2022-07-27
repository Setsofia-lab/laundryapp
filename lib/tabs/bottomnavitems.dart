import 'package:flutter/material.dart';

enum TabItem { red, green, blue, orange }

const Map<TabItem, String> tabName = {
  TabItem.red: 'Home',
  TabItem.green: 'Track Orders',
  TabItem.blue: 'Services Nearby',
  TabItem.orange: 'Profile',
};

const Map<TabItem, Icon> tabIcon = {
  TabItem.red: Icon(Icons.home),
  TabItem.green: Icon(Icons.location_city_sharp),
  TabItem.blue: Icon(Icons.local_laundry_service_rounded),
  TabItem.orange: Icon(Icons.account_circle_rounded),
};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.red: Colors.red,
  TabItem.green: Colors.green,
  TabItem.blue: Colors.blue,
  TabItem.orange: Colors.orange,
};