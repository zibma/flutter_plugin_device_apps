import 'package:device_apps/device_apps.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ListAppsPages()));

class ListAppsPages extends StatefulWidget {
  @override
  _ListAppsPagesState createState() => _ListAppsPagesState();
}

class _ListAppsPagesState extends State<ListAppsPages> {

  @override
  void initState() {
    getd();
    // TODO: implement initState
    super.initState();
  }

   Future<bool> getd()async{
    bool isInstalled = (await DeviceApps.isAppInstalled('com.zibma.androidmeetdemo'))!;
    print('ismer : ${isInstalled.toString()}');
    return isInstalled;
    // Application app = await DeviceApps.getApp('com.zibma.androidmeetdemo');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Installed applications'),
      ),
      body: Container(),
    );
  }
}
