import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smileattachface/core/presentation/res/routes.dart';
import 'package:smileattachface/features/notification/data/service/push_notification_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  void didChangeDependencies() {
    Provider.of<PushNotificationService>(context).init();
    super.didChangeDependencies();
  }

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Intro'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => Navigator.pushNamed(context, AppRoutes.profile),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Home Page",style: Theme.of(context).textTheme.title,),
          ],
        ),
      ),
    );
  }

}