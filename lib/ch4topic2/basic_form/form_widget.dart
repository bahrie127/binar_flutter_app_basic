import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Binar - Form'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                initialValue: 'John Doe',
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your name?",
                ),
                onChanged: (value) {},
              ),
              LayoutBuilder(builder: (context, constraint) {
                List<String> itemStringList = ["Female", "Male"];

                return FormField(
                  initialValue: false,
                  enabled: true,
                  builder: (FormFieldState<bool> field) {
                    return InputDecorator(
                      decoration: InputDecoration(
                        labelText: "Gender",
                        errorText: field.errorText,
                        helperText: "Your gender",
                      ),
                      child: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: "Female",
                            icon: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.arrow_drop_down_outlined,
                                size: 24.0,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            iconSize: 16,
                            elevation: 16,
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .fontSize,
                              fontFamily: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .fontFamily,
                              color:
                                  Theme.of(context).textTheme.bodyText2!.color,
                            ),
                            underline: Container(
                              height: 0,
                              color: Colors.grey[300],
                            ),
                            onChanged: (String? newValue) {},
                            items: itemStringList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Text(
                                    value,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
              Row(
                children: [
                  const Text('Connect Instagram'),
                  const SizedBox(
                    width: 8,
                  ),
                  Switch(
                    value: isOn,
                    onChanged: (bool? val) {
                      if (val != null) {
                        setState(() {
                          isOn = val;
                        });
                      }
                    },
                  ),
                ],
              ),
              LayoutBuilder(
                builder: (context, constraint) {
                  String groupValue = "gender";
                  List items = [
                    {
                      "label": "Female",
                      "value": "female",
                      "checked": true,
                    },
                    {
                      "label": "Male",
                      "value": "Male",
                    }
                  ];
                  return FormField(
                    initialValue: false,
                    enabled: true,
                    builder: (FormFieldState<bool> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          errorText: field.errorText,
                          border: InputBorder.none,
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            var item = items[index];

                            return RadioListTile<dynamic>(
                              title: Text("${item["label"]}"),
                              groupValue: true,
                              value: item["checked"] ?? false,
                              onChanged: (val) {
                                field.didChange(true);
                              },
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
              LayoutBuilder(
                builder: (context, constraint) {
                  List items = [
                    {
                      "label": "Flutter",
                      "value": "Flutter",
                    },
                    {
                      "label": "Java",
                      "value": "Java",
                      "checked": true,
                    },
                    {
                      "label": "C#",
                      "value": "C#",
                    }
                  ];
                  return FormField(
                    initialValue: false,
                    enabled: true,
                    builder: (FormFieldState<bool> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          errorText: field.errorText,
                          border: InputBorder.none,
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            var item = items[index];

                            return CheckboxListTile(
                              title: Text("${item["label"]}"),
                              value: item["checked"] ?? false,
                              onChanged: (value) {
                                field.didChange(true);
                              },
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
              InkWell(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  print("pickedDate: $pickedDate");
                },
                child: TextFormField(
                  initialValue: '2022-08-01',
                  maxLength: 20,
                  enabled: false,
                  decoration: const InputDecoration(
                    labelText: 'Birth date',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                      ),
                    ),
                    suffixIcon: Icon(Icons.date_range),
                    helperText: "What's your name?",
                  ),
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
