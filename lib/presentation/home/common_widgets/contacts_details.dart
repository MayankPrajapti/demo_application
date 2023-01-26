import 'package:demo_application/models/lead_data_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetails extends StatelessWidget {
  final ContactsData data;

  const ContactDetails({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  "Contact",
                  style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            Expanded(
                flex: 7,
                child: Text(
                  data.contact,
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ))
          ],
        ),
        if (data.designation != "")
          const SizedBox(
            height: 3,
          ),
        if (data.designation != "")
          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Text(
                    "Designation",
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                  )),
              Expanded(
                  flex: 7,
                  child: Text(
                    data.designation,
                    style: TextStyle(color: Colors.grey.shade800, fontSize: 15),
                  )),
            ],
          ),
        if (data.mobile != "")
          const SizedBox(
            height: 3,
          ),
        if (data.mobile != "")
          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Text(
                    "Mobile",
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                  )),
              Expanded(
                  flex: 7,
                  child: GestureDetector(
                    onTap: () {
                      _makePhoneCall(phoneNumber: data.mobile);
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.phone_android,size: 13,),
                        const SizedBox(width: 3,),
                        Text(
                          data.mobile,
                          style: const TextStyle(color: Colors.teal, fontSize: 15),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        if (data.email != "")
          const SizedBox(
            height: 3,
          ),
        if (data.email != "")
          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
                  )),
              Expanded(
                  flex: 7,
                  child: GestureDetector(
                    onTap: () {
                      _makeMail(mail: data.email);
                    },
                    child: Row(
                      children: [
                        const Icon(Icons.mail_outline,size: 13,),
                        const SizedBox(width: 3,),
                        Expanded(
                          child: Text(
                            data.email,
                            style: const TextStyle(color: Colors.teal, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        Theme(
            data: ThemeData(),
            child: const Divider(
              color: Colors.blue,
            ))
      ],
    );
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
}