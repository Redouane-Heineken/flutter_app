import 'package:flutter/material.dart';

class CardBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CardBody();
  }

}

class _CardBody extends State<CardBody>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 397,
      height: 194,
      color: Colors.grey,
      child: Image.network('https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1499084732479-de2c02d45fcc%3Fixlib%3Drb-1.2.1%26ixid%3DeyJhcHBfaWQiOjEyMDd9%26w%3D1000%26q%3D80&imgrefurl=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Falone&docid=G8qY0KDZBHomuM&tbnid=DWIt_N3fswtPSM%3A&vet=10ahUKEwjj4oiVuYbnAhVlAGMBHSI7DLcQMwh5KAEwAQ..i&w=1000&h=563&client=ubuntu&bih=951&biw=1853&q=image&ved=0ahUKEwjj4oiVuYbnAhVlAGMBHSI7DLcQMwh5KAEwAQ&iact=mrc&uact=8')  
    );
  }
}

