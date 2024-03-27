import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Brightness systemBrightness =
        MediaQuery.of(context).platformBrightness;
    final isDarkMode = systemBrightness == Brightness.dark;
    // var profileinfo = controller.userdata.value;

    return Scaffold(
        appBar: AppBar(
          title: GestureDetector(
              onTap: (){
                // controller.getUserProfile();
              },
              child: const Text('Profile')),
          centerTitle: false,
          titleTextStyle: TextStyle(
            color: isDarkMode ? Colors.white : Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                  child:
                  // profileinfo?.avatar == null ?
                  CircleAvatar(
                    radius: 70,
                      child: Image.asset(
                        // 'assets/tire.png',
                        'assets/images/chat-avatar.png',
                        scale: 0.3,
                      )
                    // backgroundImage: AssetImage('assets/images/avatar.png'),
                    // child: Image.asset('assets/images/avatar.png'),
                  )
                //     : CircleAvatar(
                //   radius: 70,
                //   backgroundImage:
                //   NetworkImage(profileinfo?.avatar ?? ""),
                // ),
              ),
            ),
            Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.person,
                                  size: 24,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Full Name",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "John Doe",
                                      // "${profileinfo?.firstName ?? ""} ${profileinfo?.lastName ?? ""}",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 25),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.blueAccent,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 1,
                            margin: const EdgeInsets.only(
                                left: 40, top: 5, bottom: 10),
                            color: Colors.grey[400],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.mail,
                                  size: 24,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "John@mail.com",
                                      // "${profileinfo?.email}",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 25),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.blueAccent,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 1,
                            margin: const EdgeInsets.only(
                                left: 40, top: 5, bottom: 10),
                            color: Colors.grey[400],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.phone,
                                  size: 24,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Phone",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "254700322667",
                                      // "+${profileinfo?.phone}",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 25),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.blueAccent,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 1,
                            margin: const EdgeInsets.only(
                                left: 40, top: 5, bottom: 10),
                            color: Colors.grey[400],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.business,
                                  size: 24,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "County",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "Nairobi County",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 25),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.blueAccent,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 1,
                            margin: const EdgeInsets.only(
                                left: 40, top: 5, bottom: 10),
                            color: Colors.grey[400],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.settings,
                                  size: 24,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Settings",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "App Notification Settings",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              // const Padding(
                              //   padding: EdgeInsets.only(right: 25),
                              //   child: Icon(
                              //     Icons.edit,
                              //     color: Colors.blueAccent,
                              //     size: 24,
                              //   ),
                              // ),
                            ],
                          ),
                          Container(
                            height: 1,
                            margin: const EdgeInsets.only(
                                left: 40, top: 5, bottom: 10),
                            color: Colors.grey[400],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.info,
                                  size: 24,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Help Center",
                                      style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "FAQ and Customer Support",
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 1,
                            margin: const EdgeInsets.only(
                                left: 40, top: 5, bottom: 10),
                            color: Colors.grey[400],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.logout,
                                    size: 24,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Logout",
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        "Logout from the application",
                                        style: TextStyle(fontSize: 18),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            onTap: () {
                              // controller.isLoading.value = true;
                              // controller.logOut(profileinfo?.email ?? "");
                            },
                          ),
                          Container(
                            height: 1,
                            margin: const EdgeInsets.only(
                                left: 40, top: 5, bottom: 10),
                            color: Colors.grey[400],
                          )
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ));
  }
}
