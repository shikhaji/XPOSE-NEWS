import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:xposenews/Utils/colors_utils.dart';
import 'package:xposenews/Utils/fontFamily_utils.dart';
import 'package:xposenews/widgets/custom_widgets/custom_tag.dart';

class SinglePost extends StatefulWidget {
  const SinglePost({Key? key}) : super(key: key);

  @override
  State<SinglePost> createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/space.jpg"), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: BackButton(),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
        extendBodyBehindAppBar: true,
        body: _NewsBody(),
      ),
    );
  }
}

class _NewsBody extends StatelessWidget {
  const _NewsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _NewsHeadLine(),
        SizedBox(height: 2.h),
        Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)),
            color: ColorUtils.whiteColor,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTag(
                    backgroudColor: ColorUtils.redColor.withAlpha(150),
                    childern: [
                      const CircleAvatar(
                        radius: 10,
                        backgroundImage:
                            AssetImage("assets/images/pic.jpg"),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'John Vill',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: ColorUtils.whiteColor),
                      ),
                    ],
                  ),
                  CustomTag(
                    backgroudColor: ColorUtils.redColor.withAlpha(150),
                    childern: [
                      Icon(
                        Icons.timer,
                        color: ColorUtils.whiteColor,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        '2 Min',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: ColorUtils.whiteColor),
                      ),
                    ],
                  ),
                  CustomTag(
                    backgroudColor: ColorUtils.redColor.withAlpha(150),
                    childern: [
                      Icon(
                        Icons.remove_red_eye,
                        color: ColorUtils.whiteColor,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        '246 Views',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: ColorUtils.whiteColor),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  'SpaceX destacks Starship to prep for epic 33-engine test fire',
                  style: Theme.of(context).textTheme.headline6),
              SizedBox(
                height: 20,
              ),
              Text(
                  "SpaceX destacked its Starship Mars rocket on Wednesday (Jan. 25) to continue gearing up for the giant vehicle's first-ever orbital test flight.",
                  style: FontTextStyle.poppinsS14W4BlackColor),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Materials',
                      style: Theme.of(context).textTheme.headline6),
                  TextButton(onPressed: () {}, child: Text('all materials'))
                ],
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 1.25),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage("assets/images/space.jpg"), fit: BoxFit.cover)),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ],
    );
  }
}

class _NewsHeadLine extends StatelessWidget {
  const _NewsHeadLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          CustomTag(
            backgroudColor: ColorUtils.grey.withAlpha(150),
            childern: [
              Text(
                'Space',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: ColorUtils.whiteColor),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            '4 hours ago',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: ColorUtils.grey),
          ),
          SizedBox(height: 2.h),
          Text('SpaceX destacks Starship to prep for epic 33-engine test fire',
              style: FontTextStyle.poppinsS16W7WhiteColor),
        ],
      ),
    );
  }
}
