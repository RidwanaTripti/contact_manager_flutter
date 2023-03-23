import 'package:contact_manager/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MymDivSearch extends StatefulWidget {
  const MymDivSearch({super.key});

  @override
  State<MymDivSearch> createState() => _MymDivSearchState();
}

class _MymDivSearchState extends State<MymDivSearch> {
  List<Map<String, dynamic>> allusers = [
    {"name": "আল্লামা ইকবাল", "title": "সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ"},
    {"name": "বাকি বিল্লাহ", "title": "সহ-সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ"},
    {"name": "আল-আমিন", "title": "সাধারন সম্পাদক, ময়মনসিংহ মহানগর আওয়ামীলীগ"},
    {
      "name": "ইরফানুল ইলাম",
      "title": "সহ-সাধারন সম্পাদক, ময়মনসিংহ মহানগর আওয়ামীলীগ"
    },
    {
      "name": "সাগর বিশ্বাস",
      "title": "সাংগঠনিক সম্পাদক, ময়মনসিংহ মহানগর আওয়ামীলীগ"
    },
    {
      "name": "মাহমুদুর রহমান",
      "title": "ক্রীড়া সম্পাদক, ময়মনসিংহ মহানগর আওয়ামীলীগ"
    },
    {
      "name": "খলিল আকন",
      "title": "সহ-ক্রীড়া সম্পাদক, ময়মনসিংহ মহানগর আওয়ামীলীগ"
    },
    {"name": "আল্লামা ইকবাল", "title": "সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ"},
    {"name": "আল্লামা ইকবাল", "title": "সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ"},
    {"name": "আল্লামা ইকবাল", "title": "সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ"},
    {"name": "আল্লামা ইকবাল", "title": "সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ"},
    {"name": "আল্লামা ইকবাল", "title": "সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ"},
    {"name": "আল্লামা ইকবাল", "title": "সভাপতি, ময়মনসিংহ মহানগর আওয়ামীলীগ"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RoutesName.home);
            },
            icon: const Icon(FontAwesomeIcons.arrowLeft),
            color: Colors.black,
          ),
          title: const Text("ময়মনসিংহ বিভাগ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600)),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "নাম দিয়ে খুঁজুন",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "কাঙ্ক্ষিত নামটি লিখুন",
                      hintStyle:
                          TextStyle(fontSize: 15.0, color: Colors.black54),
                      suffixIcon: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RoutesName.drop);
                          },
                          child: Icon(FontAwesomeIcons.sliders))),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: allusers.length,
                    itemBuilder: (context, index) => Card(
                      key: ValueKey(allusers[index]["name"]),
                      color: const Color.fromARGB(200, 255, 255, 255),
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        // leading: Text(allusers[index]["name"].toString()),
                        leading: const Icon(Icons.person),
                        iconColor: Colors.black,
                        title: Text(allusers[index]["name"]),
                        subtitle: Text(allusers[index]["title"]),
                        trailing: const Icon(Icons.phone),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
