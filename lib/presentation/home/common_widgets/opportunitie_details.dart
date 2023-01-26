import 'package:demo_application/models/lead_data_model.dart';
import 'package:flutter/material.dart';

class OpportunitiesDetails extends StatelessWidget {
  final OpportunitiesData data;
  const OpportunitiesDetails({required this.data,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColumnWidgets(keyString: "Opportunity Stage", value: data.opportunityStage),
        const SizedBox(height: 3,),
        ColumnWidgets(keyString: "Approx Value", value: data.valueApprox),
        const SizedBox(height: 3,),
        ColumnWidgets(keyString: "Rating", value: data.rating),
        if(data.remarks!="")const SizedBox(height: 3,),
        if(data.remarks!="")ColumnWidgets(keyString: "Remarks", value: data.remarks),
        Theme(
            data: ThemeData(),
            child: const Divider(
              color: Colors.blue,
            ))
      ],
    );
  }
}

class ColumnWidgets extends StatelessWidget {
  final String keyString;
  final String value;
  const ColumnWidgets({required this.value,required this.keyString,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 5,child: Text(keyString, style: TextStyle(color: Colors.grey.shade500, fontSize: 15),)),
        Expanded(flex: 7,child: Text(value, style: TextStyle(color: Colors.grey.shade800, fontSize: 15),)),
      ],
    );
  }
}
