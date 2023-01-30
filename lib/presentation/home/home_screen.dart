import 'package:demo_application/models/lead_data_model.dart';
import 'package:demo_application/presentation/common_widget/drawer.dart';
import 'package:demo_application/presentation/home/bloc/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo_application/utils/enum.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc homeBloc = GetIt.I<HomeBloc>();
  Map<String, dynamic> data = {};
  LoadingStatus pageLoadingStatus = LoadingStatus.InProgress;
  LeadDataModel? allLeadData;
  Map<String, dynamic> parentData = {};
  Map<String, dynamic> childrenData = {};
  List<String?> parentDataList = [];
  List<Map<String, dynamic>> childrenDataList = [];

  @override
  void initState() {
    data.forEach((key, value) {
      if (value is String) {}
    });
    homeBloc.add(const HomeEvent.getLeadData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
        listeners: [
          BlocListener<HomeBloc, HomeState>(
            bloc: homeBloc,
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                empty: (loadingStatus, failure) {
                  setState(() {
                    pageLoadingStatus = loadingStatus;
                  });
                },
                loading: () {
                  setState(() {
                    pageLoadingStatus = LoadingStatus.InProgress;
                  });
                },
                loaded: (loadingStatus, leadData) {
                  setState(() {
                    pageLoadingStatus = loadingStatus;
                    allLeadData = leadData;
                    parentData = allLeadData!.parent;
                    childrenData = allLeadData!.children;
                    parentData.forEach((key, value) {
                      parentDataList.add(value.toString());
                    });
                    childrenData.forEach((key, value) {
                      childrenDataList
                          .add({key: value as Map<String, dynamic>});
                    });
                  });
                },
              );
            },
          )
        ],
        child: Scaffold(
          drawer: const AppDrawer(),
          appBar: AppBar(
            backgroundColor: const Color(0xff068188),
            title: const Text("Leads",style: TextStyle(color: Colors.white),),
            centerTitle: true,
          ),
          body: pageLoadingStatus == LoadingStatus.Done ||
                  pageLoadingStatus == LoadingStatus.Error
              ? allLeadData != null
                  ? ListView(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration:  const BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Color(0xff068188),Colors.teal]),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(55),
                                  bottomRight: Radius.circular(55))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CircleAvatar(
                                radius: 30,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ...List<Widget>.generate(
                                    parentDataList.length,
                                    (index) {
                                      if(parentData.keyList[index]=="id"||parentDataList[index]==null){
                                        return const SizedBox();
                                      }
                                      return Text(
                                        parentDataList[index]!,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,color:Colors.white),
                                      );
                                    } ,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ...List<Widget>.generate(
                            childrenDataList.length,
                            (index) => ChildrenExpansionTile(
                                childrenData:
                                    childrenDataList[index].getMap["data"],
                                title: childrenData.keyList[index])).toList(),
                      ],
                    )
                  : const Text("data")
              : const Center(
                  child: CupertinoActivityIndicator(),
                ),
        ));
  }
}

class ChildrenExpansionTile extends StatelessWidget {
  final String title;
  final List childrenData;

  const ChildrenExpansionTile(
      {required this.childrenData, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
          dividerColor: Colors.transparent),
      child: Container(
        color: const Color(0xffE0F4FB),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        child: ExpansionTile(
          iconColor: const Color(0xff068188),
          childrenPadding: EdgeInsets.zero,
          collapsedIconColor: const Color(0xff068188),
          title: Text(
            "$title (${childrenData.length})",
            style: const TextStyle(
                color: Color(0xff068188), fontWeight: FontWeight.bold),
          ),
          children: [
            ...List.generate(
                childrenData.length,
                (index) => DisplayData(
                      data: childrenData[index],
                    )),
          ],
        ),
      ),
    );
  }
}

class DisplayData extends StatelessWidget {
  final Map<String, dynamic> data;

  const DisplayData({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        ...List.generate(data.length, (index) {
          if (data.keyList[index] == "id") {
            return const SizedBox();
          } else if (data.valuesList[index] == ""||data.valuesList[index]==null) {
            return const SizedBox();
          } else if (data.valuesList[index]!.length > 70) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.keyList[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 13),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(data.valuesList[index]!.replaceAll("&lt;", "<").replaceAll("&gt;", ">")),
                const SizedBox(
                  height: 2,
                )
              ],
            );
          } else if (data.keyList[index] == "Mobile") {
            return Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Text(
                        data.keyList[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.5),
                      )),
                  Expanded(
                      flex: 6,
                      child: GestureDetector(
                          onTap: () {
                            _makePhoneCall(phoneNumber: data.valuesList[index]??"");
                          },
                          child: Text(data.valuesList[index]??"")))
                ],
              ),
            );
          } else if (data.keyList[index] == "Email") {
            return Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Text(
                        data.keyList[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.5),
                      )),
                  Expanded(
                      flex: 6,
                      child: GestureDetector(
                          onTap: () {
                            _makeMail(mail: data.valuesList[index]??"");
                          },
                          child: Text(data.valuesList[index]??"")))
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 3,
                      child: Text(
                        data.keyList[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.5),
                      )),
                  Expanded(flex: 6, child: Text(data.valuesList[index]??""))
                ],
              ),
            );
          }
        }),
        Theme(
            data: ThemeData(dividerColor: const Color(0xff068188)), child: const Divider())
      ]),
    );
  }
}

Future<void> _makePhoneCall({required String phoneNumber}) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}

Future<void> _makeMail({required String mail}) async {
  final Uri launchUri = Uri(
    scheme: 'mailto',
    path: mail,
  );
  await launchUrl(launchUri);
}
