import 'package:flutter/material.dart';
import 'package:xposenews/Utils/colors_utils.dart';
import 'package:xposenews/Utils/fontFamily_utils.dart';

class NewsList extends StatefulWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.all(12.0),
      height: 130,
      decoration: BoxDecoration(
          color: ColorUtils.grey.withAlpha(100),
          borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage('assets/images/space.jpg'),
                      fit: BoxFit.fitHeight)),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Flexible(
            flex: 5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Space',style: FontTextStyle.poppinsS14W7BlackColor),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
                  ],
                ),SizedBox(height: 8.0,),
                Text('SpaceX destacks Starship to prep for epic 33-engine test fire',
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
