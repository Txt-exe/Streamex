import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class RequestData extends StatelessWidget{
  const RequestData({super.key});

  static Future getMediaData(url) async {
    Response response = await get(url);
    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    return Container(


    );
  }



}