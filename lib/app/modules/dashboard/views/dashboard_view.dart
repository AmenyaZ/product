import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:products/app/modules/dashboard/views/components/appBar.dart';

import '../../../theme/colors.dart';
import '../controllers/dashboard_controller.dart';
import 'components/single_car_card.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            appBar(context),
            SizedBox(height: 28,),
            Card(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: CustomColors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'HOT SALE',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: CustomColors.red),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/car.png', scale: 0.4),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'All New Rush',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: const [
                                  Text(
                                    'SUV',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: CustomColors.themedText),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
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
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.person,
                                    color: CustomColors.primaryColor,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    ' 6',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: CustomColors.themedText),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Icon(
                                    Icons.star_rate_outlined,
                                    color: CustomColors.themedText,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: CustomColors.themedText),
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
                        Row(
                          children: const [
                            Icon(
                              Icons.date_range,
                              color: CustomColors.primaryColor,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Start Date',
                              style: TextStyle(
                                  fontSize: 20, color: CustomColors.themedText),
                            )
                          ],
                        ),
                        const Text(
                          '17/03/2023',
                          style: TextStyle(
                              fontSize: 20, color: CustomColors.themedText),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.date_range,
                              color: CustomColors.primaryColor,
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'End Date',
                              style: TextStyle(
                                  fontSize: 20, color: CustomColors.themedText),
                            )
                          ],
                        ),
                        const Text(
                          '17/03/2023',
                          style: TextStyle(
                              fontSize: 20, color: CustomColors.themedText),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // ActiveBooking(),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Cars Available',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {
                              controller.navigatetoProducts();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'View All',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Icon(Icons.chevron_right_outlined)
                              ],
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          padding: EdgeInsets.only(top: 0),
                          itemBuilder: (context, index){
                            return Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: SingleCarCard(),
                            );
                          }),
                    ),
                    // ...List.generate(5, (index) {
                    //   return const Padding(
                    //     padding: EdgeInsets.only(bottom: 15),
                    //     child: SingleCarCard(),
                    //   );
                    // }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActiveBooking extends StatelessWidget {
  const ActiveBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'My Current Booking',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Order #15635353',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          // onTap: () {
          //   Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) {
          //       return const ActiveContractViewDetail();
          //     },
          //   ));
          // },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: CustomColors.white,
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'ACTIVE',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: CustomColors.primaryColor),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/car.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                'All New Rush',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: const [
                              Text(
                                'SUV',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: CustomColors.themedText),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
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
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.person,
                                color: CustomColors.primaryColor,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                ' 6',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: CustomColors.themedText),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Icon(
                                Icons.star_rate_outlined,
                                color: CustomColors.themedText,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: CustomColors.themedText),
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
                    Row(
                      children: const [
                        Icon(
                          Icons.date_range,
                          color: CustomColors.primaryColor,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Start Date',
                          style: TextStyle(
                              fontSize: 20, color: CustomColors.themedText),
                        )
                      ],
                    ),
                    const Text(
                      '17/03/2023',
                      style: TextStyle(
                          fontSize: 20, color: CustomColors.themedText),
                    )
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.date_range,
                          color: CustomColors.primaryColor,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'End Date',
                          style: TextStyle(
                              fontSize: 20, color: CustomColors.themedText),
                        )
                      ],
                    ),
                    const Text(
                      '17/03/2023',
                      style: TextStyle(
                          fontSize: 20, color: CustomColors.themedText),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
