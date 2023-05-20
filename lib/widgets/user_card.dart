import 'package:flutter/material.dart';
import 'package:library_app/widgets/user_image_small.dart';

import '../model/user_model.dart';
class UserCard extends StatelessWidget {
  final User user;
  const UserCard({Key? key,required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,left: 20.0,right: 20.0),

      child: SizedBox(
        height: MediaQuery.of(context).size.height/1.4,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/snap1.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 4,
                      offset: Offset(3,3),
                    )
                  ]
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(200,0,0, 0),
                    Color.fromARGB(0, 0, 0, 0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${user.name}, ${user.age}',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white,fontSize:35),
                  ),
                  Text(
                    '${user.jobTitle}',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white,
                      fontWeight:FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                  Row(children: [
                    if (user.assetPaths.length > 0) UserImageSmall(assetPaths: user.assetPaths[0]),
                    if (user.assetPaths.length > 1) UserImageSmall(assetPaths: user.assetPaths[1]),
                    if (user.assetPaths.length > 2) UserImageSmall(assetPaths: user.assetPaths[2]),
                    if (user.assetPaths.length > 3) UserImageSmall(assetPaths: user.assetPaths[3]),
                    SizedBox(width: 10),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.info_outline,size: 25,color: Theme.of(context).primaryColor,),
                    )
                  ],)

                ],
              ),
            ),
          ],
        ),


      ),
    );
  }
}



