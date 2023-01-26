import 'package:demo_application/models/lead_data_model.dart';
import 'package:demo_application/presentation/home/bloc/home_bloc..dart';
import 'package:demo_application/presentation/home/common_widgets/activity_details.dart';
import 'package:demo_application/presentation/home/common_widgets/opportunitie_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo_application/utils/enum.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'common_widgets/contacts_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc homeBloc = GetIt.I<HomeBloc>();
  Map<String,dynamic> data={};
  LoadingStatus pageLoadingStatus = LoadingStatus.InProgress;
  LeadDataModel? allLeadData;
  @override
  void initState() {
    data.forEach((key, value) {
      if(value is String){

      }
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
                });
              },
            );
          },
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent.withOpacity(.5),
          title: const Text("Leads"),
          centerTitle: true,
        ),
        body: pageLoadingStatus == LoadingStatus.Done ||
                pageLoadingStatus == LoadingStatus.Error
            ? allLeadData != null
                ? ListView(
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        decoration:  BoxDecoration(
                            color: Colors.lightBlueAccent.withOpacity(.5),
                            borderRadius: const BorderRadius.only(
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
                                Text(
                                  allLeadData?.parent.leadName ?? "",
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  allLeadData?.parent.city ?? "",
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  allLeadData?.parent.industryName ?? "",
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.person,
                                      size: 15,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      allLeadData?.parent.contact ?? "",
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Label(value: "General"),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 15),
                        child: SubGroup(
                            value: allLeadData!.parent.leadStatus,
                            keyString: "Lead Status"),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 15),
                        child: Label(value: "Data Group"),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 15),
                        child: SubGroup(
                            value: allLeadData!.parent.rating,
                            keyString: "Rating"),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 15),
                        child: ContactDetailsTile(
                          contactsData:
                              allLeadData!.children.contacts.contactsData,
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 15),
                        child: OpportunitiesDetailsTile(
                            opportunitiesData: allLeadData!
                                .children.opportunities.opportunitiesData),
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(horizontal: 15),
                        child: ActivityDetailsTile(
                            activitiesData:
                                allLeadData!.children.activities.activitiesData),
                      )
                    ],
                  )
                : const Text("data")
            : const Center(
                child: CupertinoActivityIndicator(),
              ),
      ),
    );
  }
}

class Label extends StatelessWidget {
  final String value;

  const Label({required this.value, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade800,
          fontSize: 18),
    );
  }
}

class SubGroup extends StatelessWidget {
  final String keyString;
  final String value;

  const SubGroup({required this.value, required this.keyString, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            style: const TextStyle(color: Colors.blue, fontSize: 16),
            text: "$keyString  ",
            children: [
          TextSpan(
              text: value,
              style: const TextStyle(color: Colors.black87, fontSize: 14))
        ]));
  }
}

class ContactDetailsTile extends StatelessWidget {
  final List<ContactsData> contactsData;

  const ContactDetailsTile({required this.contactsData, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
            dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Text("Contacts (${contactsData.length})"),
          children: List.generate(contactsData.length,
              (index) => ContactDetails(data: contactsData[index])),
        ));
  }
}

class OpportunitiesDetailsTile extends StatelessWidget {
  final List<OpportunitiesData> opportunitiesData;

  const OpportunitiesDetailsTile({required this.opportunitiesData, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
            dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Text("Opportunities (${opportunitiesData.length})"),
          children: List.generate(opportunitiesData.length,
              (index) => OpportunitiesDetails(data: opportunitiesData[index])),
        ));
  }
}

class ActivityDetailsTile extends StatelessWidget {
  final List<ActivitiesData> activitiesData;

  const ActivityDetailsTile({required this.activitiesData, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(),
            dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Text("Activities (${activitiesData.length})"),
          children: List.generate(activitiesData.length,
              (index) => ActivityDetails(data: activitiesData[index])),
        ));
  }
}
