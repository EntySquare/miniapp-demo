import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kraken/dom.dart';
import 'package:kraken/widget.dart';

class TextWidgetElement extends WidgetElement {
  TextWidgetElement(EventTargetContext? context) : super(context);

  @override
  Widget build(BuildContext context, Map<String, dynamic> properties) {
    return GestureDetector(
      onTap: takePhoto,
      child: Container(
        width: 300,
        height: 200,
        color: Colors.grey,
        // child: Text(
        //   properties['value'] ?? '',
        //   textDirection: TextDirection.ltr,
        //   style: TextStyle(color: Colors.orange, fontSize: double.parse(properties['style'])),
        // ),
        // child: Icon(
        //   Icons.camera,
        //   color: Colors.white,
        // ),
        // child: Image.asset('assets/image/photo.png'),
        // child:Image(image: AssetImage(properties['src'])),
        child: Image(image: AssetImage('assets/image/photo.png')),
      ),
    );
  }
}

class ImageWidgetElement extends WidgetElement {
  ImageWidgetElement(EventTargetContext? context) : super(context);

  @override
  Widget build(BuildContext context, Map<String, dynamic> properties) {
    return Container(
      width: 300,
      height: 200,
      color: Colors.grey,
      // child: Text(
      //   properties['value'] ?? '',
      //   textDirection: TextDirection.ltr,
      //   style: TextStyle(color: Colors.orange, fontSize: double.parse(properties['style'])),
      // ),
      // child: Icon(
      //   Icons.camera,
      //   color: Colors.white,
      // ),
      // child: Image.asset('assets/image/photo.png'),
      // child:Image(image: AssetImage(properties['src'])),
      child: Center(
        child: Image(image: AssetImage('assets/image/photo.png')),
      ),
    );
  }
}

void defineKrakenCustomElements() {
  Kraken.defineCustomElement('flutter-text', (EventTargetContext? context) {
    // return TextWidgetElement(context);
    return ImageWidgetElement(context);
  });
}

takePhoto() async {
  final ImagePicker _picker = ImagePicker();
  final photoFile = await _picker.pickImage(source: ImageSource.camera);
  if (photoFile != null) {
    final result = await ImageGallerySaver.saveImage(await photoFile.readAsBytes(), quality: 60, name: "test");
    print(result);
  }
}
