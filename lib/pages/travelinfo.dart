import 'package:bots360_app/pages/travelpages/general.dart';
import 'package:flutter/material.dart';


class Travel extends StatefulWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildGeneralCard(),
          buildGettingCard(),
          buildPortsCard(),
          buildEntryCard(),
          buildGoodsCard(),
          buildCommunicationsCard(),
          buildWearCard(),
          buildMoneyCard(),
          buildHealthCard(),
      ]
      ),
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
      onTap: (){Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const GeneralInfo(),));
        },
    ),
    height:240,
            fit: BoxFit.cover,
          ),
        const Text(
          'General Information',
              style: TextStyle(
      fontWeight: FontWeight.bold,
  color: Colors.white,
      ),
        ),
      ],
    ),
    const SizedBox(height: 8),
    Padding(
      padding: const EdgeInsets.all(16).copyWith(bottom: 0),
    child: const Text(
      'English is an official language in Botswana. It is taught at schools, and is widely spoken in all urban centres. Even...',
    style: TextStyle(fontSize: 16,)
    ),
    ),
    const SizedBox(height: 8),
    ButtonBar(
      alignment: MainAxisAlignment.start,
      children: [
        TextButton(
          child: const Text('LEARN MORE'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const GeneralInfo(),));
          },

        )
      ],
    )
    ],
  )
  );
  Widget buildGettingCard() =>  Card(
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
                    'https://www.botswanatourism.co.bw/sites/default/files/styles/travel_info_index/public/4d2d6029-5e78-492a-af1e-69fba8a7fbd2_0.jpeg?itok=hNDSVnhG'
                ),
                child: InkWell(
                  onTap: (){},
                ),
                height:240,
                fit: BoxFit.cover,
              ),
              const Text(
                'Getting There',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text(
                'Air Botswana, Botswana’s national and only airline, provides international flights between Gaborone and Johannesburg,...',
                style: TextStyle(fontSize: 16,)
            ),
          ),
          const SizedBox(height: 8),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {},

              )
            ],
          )
        ],
      )
  );
  Widget buildPortsCard() =>  Card(
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
                    'https://www.botswanatourism.co.bw/sites/default/files/styles/travel_info_index/public/airprt.jpg?itok=ErR4qD8A'
                ),
                child: InkWell(
                  onTap: (){},
                ),
                height:240,
                fit: BoxFit.cover,
              ),
              const Text(
                'Ports Of Entry',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text(
                'Contact information you need for border posts and Airports in Botswana. Pont...',
                style: TextStyle(fontSize: 16,)
            ),
          ),
          const SizedBox(height: 8),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {},

              )
            ],
          )
        ],
      )
  );
  Widget buildEntryCard() =>  Card(
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
                    'https://www.botswanatourism.co.bw/sites/default/files/styles/travel_info_index/public/KhamaInterior.jpg?itok=DH_RbTP4'
                ),
                child: InkWell(
                  onTap: (){},
                ),
                height:240,
                fit: BoxFit.cover,
              ),
              const Text(
                'Entry Formalities',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text(
                'Citizens of most European and Common-wealth countries do not require a visa for entry into Botswana. Visitors...',
                style: TextStyle(fontSize: 16,)
            ),
          ),
          const SizedBox(height: 8),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {},

              )
            ],
          )
        ],
      )
  );
  Widget buildVisasCard() =>  Card(
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
                    'https://www.botswanatourism.co.bw/sites/default/files/styles/travel_info_index/public/airport.jpeg?itok=9k9BPQ45'
                ),
                child: InkWell(
                  onTap: (){},
                ),
                height:240,
                fit: BoxFit.cover,
              ),
              const Text(
                'Countries Requiring Visas',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text(
                'All Citizens of Commonwealth countries do not require visa except those from Bangladesh, Cameroon, Ghana, India, Nigeria, Pakistan, and...',
                style: TextStyle(fontSize: 16,)
            ),
          ),
          const SizedBox(height: 8),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {},

              )
            ],
          )
        ],
      )
  );
  Widget buildGoodsCard() =>  Card(
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
                    'https://www.botswanatourism.co.bw/sites/default/files/styles/travel_info_index/public/VGR_20090509_8809%20-%20at%20a%20glance.jpg?itok=6a-iBQv_'
                ),
                child: InkWell(
                  onTap: (){},
                ),
                height:240,
                fit: BoxFit.cover,
              ),
              const Text(
                'Importation Of Goods',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text(
                'When making baggage declarations, whether verbal or written, you must ensure that you declare all goods in...',
                style: TextStyle(fontSize: 16,)
            ),
          ),
          const SizedBox(height: 8),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {},

              )
            ],
          )
        ],
      )
  );
  Widget buildCommunicationsCard() =>  Card(
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
                    'https://www.botswanatourism.co.bw/sites/default/files/styles/travel_info_index/public/comms.jpeg?itok=yOv3O1K_'
                ),
                child: InkWell(
                  onTap: (){},
                ),
                height:240,
                fit: BoxFit.cover,
              ),
              const Text(
                'Communications',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text(
                'Most of Botswana is networked by automatic telephone exchanges, with public telephones in even the most remote places. The...',
                style: TextStyle(fontSize: 16,)
            ),
          ),
          const SizedBox(height: 8),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {},

              )
            ],
          )
        ],
      )
  );
  Widget buildWearCard() =>  Card(
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
                    'https://www.botswanatourism.co.bw/sites/default/files/styles/travel_info_index/public/luggage.jpeg?itok=Zh8h5OR5'
                ),
                child: InkWell(
                  onTap: (){},
                ),
                height:240,
                fit: BoxFit.cover,
              ),
              const Text(
                'What to Bring/Wear',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text(
                'Binoculars, torch, insect repellent, lip salve, sunscreen, sunglasses. Cosmetics, medications, and cigarettes are...',
                style: TextStyle(fontSize: 16,)
            ),
          ),
          const SizedBox(height: 8),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {},

              )
            ],
          )
        ],
      )
  );
  Widget buildMoneyCard() =>  Card(
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
                    'https://www.botswanatourism.co.bw/sites/default/files/styles/travel_info_index/public/GaboroneStreetScene_0.jpg?itok=SOtPVAxQ'
                ),
                child: InkWell(
                  onTap: (){},
                ),
                height:240,
                fit: BoxFit.cover,
              ),
              const Text(
                'Money',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text(
                'The Botswana currency is the Pula (meaning ‘rain’ in Setswana). It is divided into 100 thebe (meaning ‘shield’...',
                style: TextStyle(fontSize: 16,)
            ),
          ),
          const SizedBox(height: 8),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {},

              )
            ],
          )
        ],
      )
  );
  Widget buildHealthCard() =>  Card(
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
                    'https://www.botswanatourism.co.bw/sites/default/files/styles/travel_info_index/public/marina.jpg?itok=23BvK_09'
                ),
                child: InkWell(
                  onTap: (){},
                ),
                height:240,
                fit: BoxFit.cover,
              ),
              const Text(
                'Health',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(16).copyWith(bottom: 0),
            child: const Text(
                'Botswana is one of the healthiest countries in sub-Saharan Africa, with good primary health care facilities available throughout the...',
                style: TextStyle(fontSize: 16,)
            ),
          ),
          const SizedBox(height: 8),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {},

              )
            ],
          )
        ],
      )
  );
}
