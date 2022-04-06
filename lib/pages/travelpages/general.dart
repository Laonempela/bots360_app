import 'package:flutter/material.dart';

class GeneralInfo extends StatefulWidget {
  const GeneralInfo({Key? key}) : super(key: key);

  @override
  State<GeneralInfo> createState() => _GeneralInfoState();
}

class _GeneralInfoState extends State<GeneralInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('General Info'),
        centerTitle: true,
      ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            buildGeneralCard(),
            buildInfo(),
          ],
        )
    );
  }
  Widget buildGeneralCard() =>  Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column (
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Ink.image(
                image: const NetworkImage(
                    'https://www.botswanatourism.co.bw/sites/default/files/styles/travel_info_index/public/510e82ea-3638-48d6-993e-0df6a8a7fbd2_0.jpeg?itok=M4sHsqtC'
                ),
                child: InkWell(
                  onTap: (){},
                ),
                height:240,
                fit: BoxFit.cover,
              ),
              ],
      ),
    ],
      ),
  );
  Widget buildInfo() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text(
        'Language',
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 16),
      Text("English is an official language in Botswana. It is taught at schools, and is widely spoken in all urban centres. Even in rural areas, many local villagers (especially younger ones who have received schooling) will be able to converse in English. All guides and general staff in the camps, lodges and hotel have got a good command of English.",
        style: TextStyle(color: Colors.black,fontSize: 16.0, fontWeight: FontWeight.normal),),
      SizedBox(height: 5),
      Text("German, Italian and French translators are available on request – request through your travel operator or agent. When staying at a private camp or lodge, your guide will very often be able to introduce you to his or her friends and family, and will act as interpreter if necessary. Some amazing interaction with local people is possible, and more than likely to occur while on your trip to Botswana.",
        style: TextStyle(color: Colors.black,fontSize: 16.0, fontWeight: FontWeight.normal),),
      SizedBox(height: 16),
      Text(
        'Electrical Supply',
        style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 16),
      Text("Electricity is supplied at 220/240v. Both square and round wall plugs are used.",
        style: TextStyle(color: Colors.black,fontSize: 16.0, fontWeight: FontWeight.normal),),
      SizedBox(height: 5),
      Text(
        'Firearms & Ammunition',
        style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 16),
      Text("The issue of firearms licenses in Botswana is strictly controlled, and all firearms imported under the authority of an import permit must be licensed immediately upon arrival in Botswana. The importation of firearms that do not have the manufacturer’s serial number or other number by which they can be identified, stamped or engraved on a metal part of the weapon is totally prohibited.",
        style: TextStyle(color: Colors.black,fontSize: 16.0, fontWeight: FontWeight.normal),),
      SizedBox(height: 5),
      Text(
        'Emergency Numbers',
        style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
      ),
    ],
    ),
  );
}
