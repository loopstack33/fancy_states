library fancy_states;
import 'package:flutter/material.dart';

enum States {
  internet,
  data,
  search,
  server,
}

class FancyState extends StatelessWidget {
  final States state;
  final String? image;
  final String? title;
  final String? description;
  final double? imageHeight;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;
  const FancyState({Key? key,required this.state,this.description,this.image,this.title,
    this.descriptionStyle,this.imageHeight,this.titleStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case States.internet:
        return ScreenWidget(
            title: title?? "No Internet",
            image: image ?? "assets/internet.png",
            description: description ?? "Please Check your internet connection and try again",
            imageHeight: imageHeight ?? 185,
            titleStyle:titleStyle ?? const TextStyle(fontFamily: 'Futura',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),
            descriptionStyle:descriptionStyle ?? const  TextStyle(fontFamily: 'Futura',fontSize: 12,fontWeight: FontWeight.w300,color: Color(0xFF8F8E8E)),
        );

      case States.data:
        return ScreenWidget(
            title: title?? "No Data Found",
            image: image ?? "assets/data.png",
            description: description ?? "We have not found any data related to your query",
            imageHeight: imageHeight ?? 185,
            titleStyle:titleStyle ?? const TextStyle(fontFamily: 'Futura',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),
            descriptionStyle:descriptionStyle ?? const  TextStyle(fontFamily: 'Futura',fontSize: 12,fontWeight: FontWeight.w300,color: Color(0xFF8F8E8E)),
        );

      case States.search:
        return ScreenWidget(
            title: title?? "No Search Results",
            image: image ?? "assets/search.png",
            description: description ?? "We have not found any data related to your search",
            imageHeight: imageHeight ?? 185,
            titleStyle:titleStyle ?? const TextStyle(fontFamily: 'Futura',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),
            descriptionStyle:descriptionStyle ?? const  TextStyle(fontFamily: 'Futura',fontSize: 12,fontWeight: FontWeight.w300,color: Color(0xFF8F8E8E)),
        );

      case States.server:
        return ScreenWidget(
            title: title?? "Server Error",
            image: image ?? "assets/server.png",
            description: description ?? "Sorry, unexpected error. We are working on fixing the problem. Be back soon",
            imageHeight: imageHeight ?? 185,
            titleStyle:titleStyle ?? const TextStyle(fontFamily: 'Futura',fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),
            descriptionStyle:descriptionStyle ?? const  TextStyle(fontFamily: 'Futura',fontSize: 12,fontWeight: FontWeight.w300,color: Color(0xFF8F8E8E)),
        );
    }
  }
}

class ScreenWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double imageHeight;
  final TextStyle titleStyle;
  final TextStyle descriptionStyle;
  const ScreenWidget({Key? key,required this.title,required this.image,required this.description,
    required this.descriptionStyle,required this.imageHeight,required this.titleStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image,height:imageHeight),
        const SizedBox(height: 10),
        Text(title,style:titleStyle),
        const SizedBox(height: 5),
        Text(description,style: descriptionStyle),
      ],
    );
  }
}

