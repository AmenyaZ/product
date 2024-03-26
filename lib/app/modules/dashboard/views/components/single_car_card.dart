import 'package:flutter/material.dart';
import 'package:products/app/modules/dashboard/views/components/single_car.dart';

import '../../../../theme/colors.dart';

class SingleCarCard extends StatelessWidget {
  const SingleCarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: CustomColors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'All New Rush',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'SUV',
                    style:
                        TextStyle(fontSize: 20, color: CustomColors.themedText),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline_outlined,
                    color: CustomColors.themedText,
                  ))
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset('assets/images/car.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.local_gas_station_rounded,
                      color: CustomColors.themedText,
                    ),
                    Text(
                      ' 25L',
                      style: TextStyle(
                          fontSize: 20, color: CustomColors.themedText),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.settings_rounded,
                      color: CustomColors.themedText,
                    ),
                    Text(
                      ' Manual',
                      style: TextStyle(
                          fontSize: 20, color: CustomColors.themedText),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.people_rounded,
                      color: CustomColors.themedText,
                    ),
                    Text(
                      ' 6 People',
                      style: TextStyle(
                          fontSize: 20, color: CustomColors.themedText),
                    )
                  ],
                )
              ],
            )
          ]),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.textBlack),
                        children: [
                          TextSpan(text: 'Ksh. 1500/'),
                          TextSpan(
                            text: ' day',
                            style: TextStyle(
                                color: CustomColors.themedText,
                                fontWeight: FontWeight.normal),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star_border_outlined,
                        color: CustomColors.themedText,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                            fontSize: 20, color: CustomColors.textBlack),
                      ),
                    ],
                  )
                ],
              ),
              const Expanded(child: SizedBox()),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                      backgroundColor: CustomColors.primaryColor),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return const SingleCar();
                      },
                    ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 18.0),
                    child: Text(
                      'View',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
