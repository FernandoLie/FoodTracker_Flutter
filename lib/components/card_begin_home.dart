import 'package:flutter/material.dart';

import '../constanta.dart';

class CardBeginHome extends StatelessWidget {
  const CardBeginHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black, width: 0.5),
            borderRadius: BorderRadius.circular(8.0)),
        elevation: 10,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hello John',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: greendefault(),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
              ),
              Column(
                children: [
                  Text(
                    'Your Calorie intake Today is',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontSize: 10,
                        ),
                  ),
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: greendefault(),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8, right: 8, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              Image.asset('assets/images/Outline.png'),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                '77 cal',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      fontSize: 13,
                                    ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: greendefault(),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8, right: 8, top: 4, bottom: 4),
                          child: Row(
                            children: [
                              Image.asset('assets/images/Vector.png'),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                '80 kg',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      fontSize: 13,
                                    ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
