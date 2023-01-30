import 'package:demo_application/models/form_data_model.dart';
import 'package:demo_application/presentation/common_widget/common_date_picker.dart';
import 'package:demo_application/presentation/common_widget/common_drop_down.dart';
import 'package:demo_application/presentation/common_widget/common_text_field.dart';
import 'package:demo_application/presentation/common_widget/drawer.dart';
import 'package:demo_application/presentation/demo_2/bloc/screen2_bloc.dart';
import 'package:demo_application/utils/constant.dart';
import 'package:demo_application/utils/enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';

class Demo2Screen extends StatefulWidget {
  const Demo2Screen({Key? key}) : super(key: key);

  @override
  State<Demo2Screen> createState() => _Demo2ScreenState();
}

class _Demo2ScreenState extends State<Demo2Screen> {
  Screen2Bloc screenBloc = GetIt.I<Screen2Bloc>();
  List<FormDataModel> formData = [];
  LoadingStatus pageLoadingStatus = LoadingStatus.InProgress;

  @override
  void initState() {
    screenBloc.add(const Screen2Event.getFormData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xff068188),
        title: const Text(
          "Form",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.note_add),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<Screen2Bloc, Screen2State>(
            bloc: screenBloc,
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loaded: (loadingStatus, leadData) {
                  setState(() {
                    pageLoadingStatus = loadingStatus;
                    formData = leadData;
                  });
                },
              );
            },
          )
        ],
        child: pageLoadingStatus == LoadingStatus.Done ||
                pageLoadingStatus == LoadingStatus.Error
            ? FormBuilder(
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  children: [
                    ...List.generate(formData.length, (index) {
                      if (formData[index].controlType == ControlType.textBox) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text(
                                    formData[index].caption ?? "",
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  )),
                              Expanded(
                                  flex: 6,
                                  child: CommonTextField(
                                    name: formData[index].caption ?? "",
                                    isDense: true,
                                  ))
                            ],
                          ),
                        );
                      } else if (formData[index].controlType ==
                          ControlType.textArea) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(formData[index].caption ?? "",
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(
                                height: 5,
                              ),
                              CommonTextField(
                                name: formData[index].caption ?? "",
                                maxLines: 5,
                                isDense: true,
                              ),
                            ],
                          ),
                        );
                      } else if (formData[index].controlType ==
                          ControlType.datePicker) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Text(
                                    formData[index].caption ?? "",
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  )),
                              Expanded(
                                  flex: 6,
                                  child: CommonDatePicker(
                                    name: formData[index].caption ?? "",
                                    isDense: true,
                                  ))
                            ],
                          ),
                        );
                      } else if (formData[index].controlType ==
                              ControlType.dropDown &&
                          formData[index].options != "") {
                        List<String> options =
                            formData[index].options!.split(";");
                        return Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Text(
                                  formData[index].caption ?? "",
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                )),
                                Expanded(
                                  flex: 6,
                                  child: CommonDropDown(
                                  items: List.generate(
                                      options.length,
                                      (ddIndex) => DropdownMenuItem<String>(
                                          value: options[ddIndex],
                                          child: Text(options[ddIndex]))),
                                  name: formData[index].caption ?? ""),
                                ),
                              ],
                        );
                      } else {
                        return const SizedBox();
                      }
                    }),
                  ],
                ),
              )
            : const Center(
                child: CupertinoActivityIndicator(),
              ),
      ),
    );
  }
}
