import 'package:demo_application/models/lead_data_model.dart';
import 'package:demo_application/presentation/home/bloc/home_bloc..dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeBloc homeBloc=GetIt.I<HomeBloc>();
  LeadDataModel? allLeadData;
  @override
  void initState() {
    homeBloc.add(const HomeEvent.getLeadData());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [BlocListener<HomeBloc,HomeState>(bloc: homeBloc,listener: (context, state) {
        state.maybeWhen(orElse: () {

        },empty: (loadingStatus, failure) {

        },loading: () {

        },
        loaded: (loadingStatus, leadData) {
          allLeadData=leadData;
        },);
      },)],
      child: Scaffold(
        appBar: AppBar(title: const Text("Leads"),centerTitle: true,),
        body: Padding(padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 10) ,
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(radius: 30,),
                  const SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(allLeadData?.parent.leadName??"",style: const TextStyle(fontSize:17,fontWeight: FontWeight.w500),),
                      const SizedBox(height: 2,),
                      Text(allLeadData?.parent.city??"",style: const TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
                      const SizedBox(height: 2,),
                      Text(allLeadData?.parent.industryName??"",style: const TextStyle(fontSize:15,fontWeight: FontWeight.w500),),
                      Row(
                        children: [
                          const Icon(Icons.person,size: 15,),
                          const SizedBox(width: 5,),
                          Text(allLeadData?.parent.contact??"",style: const TextStyle(fontSize:15,fontWeight: FontWeight.w500),)
                        ],
                      )
                    ],
                  )

                ],
              ),
              SizedBox(height: 15,),
              Text("General",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey.shade600,fontSize: 18),),
              RichText(text: TextSpan(style: TextStyle(color: Colors.grey.shade600),text:"Lead Status",children: [TextSpan(text: allLeadData!.parent.leadStatus,style: TextStyle(color: Colors.black87))] ))
            ],
          ),
        ),
      ),
    );
  }
}
