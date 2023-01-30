import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:swipe_cards/swipe_cards.dart';

import 'package:xposenews/Utils/fontFamily_utils.dart';

import 'custom_tag.dart';
import '../../utils/colors_utils.dart';
import 'imageSwipeCards.dart';

class SwipeImageCard extends StatefulWidget {
  const SwipeImageCard({Key? key}) : super(key: key);

  @override
  State<SwipeImageCard> createState() => _SwipeImageCardState();
}

class _SwipeImageCardState extends State<SwipeImageCard> {
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  List<String> NewsHeadLine = [
    'SpaceX destacks Starship to prep for epic 33-engine test fire',
    'SpaceX destacks Starship to prep for epic 33-engine test fire',
    'SpaceX destacks Starship to prep for epic 33-engine test fire',
    'SpaceX destacks Starship to prep for epic 33-engine test fire',
    'SpaceX destacks Starship to prep for epic 33-engine test fire'
  ];

  @override
  void initState() {
    // TODO: implement initState
    for(int i = 0; i< NewsHeadLine.length; i++)
      {
        _swipeItems.add(SwipeItem(content: content(text: NewsHeadLine[i]),));
      }
    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SwipeCards(matchEngine: _matchEngine!,
          itemBuilder: (BuildContext context, int index){
            return Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.cover),
                color: ColorUtils.BlueColor,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: CustomTag(
                      backgroudColor: ColorUtils.grey.withAlpha(150),
                      childern: [
                        Text(
                          'Space',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: ColorUtils.whiteColor),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.5.h,),
                  Text(NewsHeadLine[index],style: FontTextStyle.poppinsS16W7WhiteColor,),
                  SizedBox(height: 0.5.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child:Row(
                          children: [
                            Icon(
                              CupertinoIcons.captions_bubble,
                              color: ColorUtils.whiteColor,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '172 comments',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: ColorUtils.whiteColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        child:Row(
                          children: [
                            Icon(
                              CupertinoIcons.time,
                              color: ColorUtils.whiteColor,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '5 Hours Ago',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: ColorUtils.whiteColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
            onStackFinished: (){
              return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('The List Is Over')));
            },
          ),
        ),
      ],
    );
  }
}

class content{
  final String? text;
  content({this.text});

}