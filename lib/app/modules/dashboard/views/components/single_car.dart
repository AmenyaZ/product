import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';

class SingleCar extends StatelessWidget {
  const SingleCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.chevron_left_rounded,
                size: 55,
              )),
        ],
      ),
      const SizedBox(
        height: 30,
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView(
            children: [
              const Text(
                'All New Rush',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'SUV',
                style: TextStyle(fontSize: 18, color: CustomColors.textGrey),
              ),
              const SizedBox(
                height: 12,
              ),
              Image.asset('assets/images/car-large.png' , scale: 0.6,),
              const SizedBox(
                height: 12,
              ),

              const SizedBox(
                height: 28,
              ),
              const Text(
                'Car Specs',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: const Color.fromARGB(255, 201, 201, 201),
                          width: 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Top Speed',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '180',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'kmh',
                        style: TextStyle(
                            fontSize: 13, color: CustomColors.textGrey),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: const Color.fromARGB(255, 201, 201, 201),
                          width: 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Max power',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '250',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'hp',
                        style: TextStyle(
                            fontSize: 13, color: CustomColors.textGrey),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: const Color.fromARGB(255, 201, 201, 201),
                          width: 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '0-60kmh',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        '10',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'secs',
                        style: TextStyle(
                            fontSize: 13, color: CustomColors.textGrey),
                      )
                    ],
                  ),
                )
              ]),
              const SizedBox(
                height: 28,
              ),

              const Text(
                'Car Info',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.person_rounded,
                              color: CustomColors.primaryColor),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '4 Passengers',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.ac_unit_rounded,
                              color: CustomColors.primaryColor),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Air Conditioning',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: const [
                          Icon(Icons.directions_car_rounded,
                              color: CustomColors.primaryColor),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '4 doors',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.settings_rounded,
                              color: CustomColors.primaryColor),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Manual',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.local_gas_station_rounded,
                            color: CustomColors.primaryColor,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            'Fuel',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.speed_rounded,
                            color: CustomColors.primaryColor,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            '24,000km',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                            text: 'KES 1,500',
                            style: TextStyle(
                                fontSize: 15.5,
                                fontWeight: FontWeight.w600,
                                color: CustomColors.textBlack),
                          ),
                          TextSpan(
                            text: '/ day',
                            style: TextStyle(
                                fontSize: 14, color: CustomColors.textGrey),
                          )
                        ]),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          backgroundColor: CustomColors.primaryColor),
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) {
                        //     return const ChooseDates();
                        //   },
                        // ));
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 18.0),
                        child: Text(
                          'Book Now',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )
    ])));
  }
}
