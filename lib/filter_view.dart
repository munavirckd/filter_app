import 'dart:convert';

import 'package:filter_application/custom_radio.dart';
import 'package:filter_application/custom_select.dart';
import 'package:filter_application/data.dart';
import 'package:filter_application/taxonomy.dart';
import 'package:flutter/material.dart';

class FilterView extends StatefulWidget {
  @override
  _FilterViewState createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  List<Data> dataList = [];
  List<Taxonomy> selectedItems = [];

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  void loadJsonData() {
    final String jsonString = '''{
      "data": [
        {
         "name":"Cuisines",
         "slug":"cuisine",
         "taxonomies":[
            {"id":80,"Guid":"4350EBAA-7189-4173-9180-BD95460401C7","slug":"international","name":"International"},
            {"id":82,"Guid":"A7104031-6E6D-452F-A0AF-34E3271E4DA4","slug":"italian","name":"Italian"},
            {"id":70,"Guid":"575B7732-AA5A-45F8-9E50-FA350FD92C8C","slug":"contemporary-1","name":"Contemporary"},
            {"id":546,"Guid":"11899563-66D9-4BE6-B603-037AB8879E07","slug":"african","name":"African"},
            {"id":79,"Guid":"53BC06AD-65CC-4348-B087-2BB450667EBE","slug":"indian","name":"Indian"},
            {"id":637,"Guid":"A233D7B3-13CF-4223-989B-550405BB5EAE","slug":"austrian","name":"Austrian"},
            {"id":74,"Guid":"9DBBE3F5-A38A-49E3-B319-72D0585B04D2","slug":"french","name":"French"},
            {"id":77,"Guid":"FC9AD02C-9164-4B86-852D-EA2E7600DA04","slug":"greek","name":"Greek"},
            {"id":57,"Guid":"AD4A6C06-5443-4ACB-8033-EE4189E10F2A","slug":"asian","name":"Asian"},
            {"id":83,"Guid":"6E0DF8F0-0F51-49FB-A452-5AABDD19C621","slug":"japanese","name":"Japanese"},
            {"id":89,"Guid":"295E213C-4215-42AA-B7AD-7CD049A61E90","slug":"middle-eastern","name":"Middle Eastern"},
            {"id":102,"Guid":"A7B3DDCA-4C8B-4230-AFE8-0FD5FCE317B3","slug":"spanish","name":"Spanish"},
            {"id":103,"Guid":"8A7B0E8E-5A6A-46F4-9D4F-ECC019A4BB89","slug":"steak","name":"Steak"},
            {"id":107,"Guid":"E36B4F13-83AE-4A6D-8258-F116154587EA","slug":"thai","name":"Thai"},
            {"id":108,"Guid":"3DC01571-4B41-48DE-B5A4-F2B31F275B47","slug":"turkish","name":"Turkish"},
            {"id":638,"Guid":"4BCF0EED-7533-4231-9919-74FBA246DFEC","slug":"azerbaijan","name":"Azerbaijan"},
            {"id":636,"Guid":"4CFDB030-F6D8-4BC3-ADD7-F1D76D47E94E","slug":"australian","name":"Australian"},
            {"id":639,"Guid":"69FAABD6-6ADC-4ADD-94A6-C55F6EC8BDF9","slug":"brazilian","name":"Brazilian"},
            {"id":640,"Guid":"A665F9D4-2557-4FD9-BBD2-AA7D2071C308","slug":"east-european","name":"East European"},
            {"id":642,"Guid":"E2B0D8CA-0BA7-4B94-9485-7A2D35A0B12A","slug":"englishbritish","name":"English/British"},
            {"id":656,"Guid":"78E4852E-A485-4706-B75B-17751B859D22","slug":"street-food","name":"Street Food"},
            {"id":681,"Guid":"A79C79BF-B0A8-472A-BDFF-D7DB52248C8D","slug":"testing","name":"testing"},
            {"id":110,"Guid":"30A707BB-3010-45CF-A3F2-F31934A0666E","slug":"korean","name":"Korean"},
            {"id":120,"Guid":"994F9831-3EA8-4F93-BEAE-40B7150CC2DC","slug":"vegetarian","name":"Vegetarian"},
            {"id":121,"Guid":"E8DDC739-C94E-42D8-B721-9C5CF34EB905","slug":"vegan","name":"Vegan"},
            {"id":131,"Guid":"BA7FADCD-5B0E-44F8-8587-057D3AA7CB80","slug":"continental","name":"Continental"},
            {"id":84,"Guid":"0E1EF74C-0AF1-4180-9D70-278F8F97701B","slug":"latin-american","name":"Latin American"},
            {"id":66,"Guid":"883D6645-1BDD-40BE-AC2E-4CDCE8677116","slug":"chinese","name":"Chinese"}
         ]
      },
        {
         "name":"Suitable Diets",
         "slug":"suitable-diet",
         "taxonomies":[
            {"id":503,"Guid":"B6B47FC6-3470-41BB-9AC8-47EBEABC4DEB","slug":"dairy-free","name":"Dairy-Free"},
            {"id":513,"Guid":"AF13A334-68F0-486F-A1A0-866E52BDBF55","slug":"halal","name":"Halal"},
            {"id":517,"Guid":"5E73CD24-3B58-4258-8DC0-6C1585616BE9","slug":"vegetarian-sd","name":"Vegetarian"},
            {"id":509,"Guid":"90D77DE6-9600-4ACF-8317-3BEE252A2255","slug":"pescatarian","name":"Pescatarian"},
            {"id":502,"Guid":"042C5252-7126-48BB-B457-AD4ABE31D587","slug":"vegan-sd","name":"Vegan"},
            {"id":506,"Guid":"4299B3C8-196D-437C-B3C9-06454EFD3E53","slug":"low-carb","name":"Low-Carb"},
            {"id":504,"Guid":"245DF0F7-CCFC-4ADD-9D31-7C1D2AD51731","slug":"gluten-free","name":"Gluten-Free"},
            {"id":510,"Guid":"6E16198B-E072-4442-AC92-5CB880D4FC00","slug":"lactose-free","name":"Lactose-Free"},
            {"id":512,"Guid":"AE6BAFC4-9867-49CB-9BFA-E7CB50455B25","slug":"kosher","name":"Kosher"},
            {"id":518,"Guid":"88310461-97A5-4D0A-9861-A16F9DA2E558","slug":"low-fat","name":"Low-Fat"}
         ]
      },
      {"name":"Experiences",
         "slug":"experience",
         "taxonomies":[{"id":609,"Guid":"C78114C8-50D9-41C5-9760-B7E47E5E0C05","slug":"casual-dining","name":"Casual Dining"},{"id":603,"Guid":"D676B818-827A-4C40-9E2D-0FA5E5BF7637","slug":"al-fresco-dining","name":"Al Fresco Dining"},{"id":351,"Guid":"BE97E925-D2EB-4CC8-B3BC-77F417C5050C","slug":"live-entertainment","name":"Live Entertainment"},{"id":359,"Guid":"63440A4E-92E7-451E-B5FA-37187785DE0E","slug":"set-menu","name":"SetMenu"},{"id":631,"Guid":"816B8E02-CFD5-4F3D-B5CA-748742B5674C","slug":"seating-with-a-view","name":"Seating with a View"},{"id":633,"Guid":"4B1BDD5A-DB1D-48E8-8694-444805B18F37","slug":"sports-bar-1","name":"Sports Bar"},{"id":342,"Guid":"DB78D8E7-B339-4C11-B4CE-2677E4028594","slug":"afternoon-tea","name":"Afternoon Tea"},{"id":616,"Guid":"18C18CA9-1FE2-4D1A-B484-B1685D271AC1","slug":"fine-dining-1","name":"Fine Dining"},{"id":607,"Guid":"AA9315D5-DEBE-416B-9715-DA79B15A3665","slug":"brunch-3","name":"Brunch"},{"id":605,"Guid":"8D59C7F9-7B06-4228-8462-D636244E1481","slug":"award-winning","name":"Award-Winning"},{"id":615,"Guid":"70914569-2136-4E41-8B91-46959F298C49","slug":"family-style","name":"Family Style"},{"id":634,"Guid":"C7012D89-E744-4612-AF7E-BED90CB54F0B","slug":"take-away-1","name":"Take-Away"},{"id":626,"Guid":"CE5B5D09-8DD3-43CF-ADFA-754588BAE254","slug":"poolside-dining","name":"Poolside Dining"},{"id":604,"Guid":"98A179BB-F450-402B-811D-10C79991E99B","slug":"all-inclusive","name":"AllInclusive"},{"id":612,"Guid":"51BABE9C-DAB4-450A-8819-9C8AF24DE02C","slug":"dine-around","name":"Dine Around"},{"id":613,"Guid":"53C0A71D-7506-47E4-A313-BCD382549FD7","slug":"dining-with-a-view","name":"Dining with a View"},{"id":614,"Guid":"BEDE114D-5090-4FE9-B391-3422A32027E5","slug":"drinks-paring","name":"Drinks Paring"},{"id":606,"Guid":"DE0F9A2A-849E-4751-92BD-860BE45F61CD","slug":"beachside-dining","name":"Beachside Dining"},{"id":357,"Guid":"F22A9895-71ED-435D-8B32-91384803DEF7","slug":"buffet","name":"Buffet"},{"id":628,"Guid":"CA75E925-E261-405B-AE81-86147ADE51FB","slug":"romantic-dinner","name":"Romantic Dinner"},{"id":620,"Guid":"A379561A-46FF-428C-A5D7-6DF5FFA038EF","slug":"live-dj-1","name":"Live DJ"}]
         },

         {"name":"MealPeriods",
         "slug":"mealperiod",
         "taxonomies":[{"id":368,"Guid":"525FC276-5C39-417E-AE20-64111D5D13DF","slug":"dinner","name":"Dinner"},{"id":366,"Guid":"9F8C3ABC-B000-49EA-8B08-A87A5F3A339D","slug":"lunch","name":"Lunch"},{"id":365,"Guid":"F938A9E1-EBE7-4F58-B675-626575AD2930","slug":"breakfast","name":"Breakfast"},{"id":367,"Guid":"04CBEABE-A48D-4141-A81A-F87E47C3EB2A","slug":"afternoon-tea-1","name":"Afternoon Tea"},{"id":564,"Guid":"B997A11D-A787-4534-A56E-9ECB6B109EF3","slug":"all-day-dining-1","name":"All-Day Dining"},{"id":563,"Guid":"04B516DC-C01A-4D98-A1AE-34DC13C20B42","slug":"brunch-1","name":"Brunch"},{"id":562,"Guid":"3E7068FB-0F24-4711-AB09-F45094204ECE","slug":"nightcap","name":"Nightcap"},{"id":370,"Guid":"6C97C8F8-C7D2-4A17-8F00-3E0D8FF1EF84","slug":"24-hour-service","name":"24-Hour Service"}]
         },
         {"name":"Dress Codes",
         "slug":"attire",
         "taxonomies":[{"id":373,"Guid":"80FE6576-3E3D-4F7E-99EA-8961A9A4E241","slug":"casual-1","name":"Casual"},{"id":379,"Guid":"3BA52000-36A3-43E7-A6B0-AB665532D3B1","slug":"smart-casual-1","name":"Smart Casual"},{"id":371,"Guid":"82F5C08C-982C-4765-B116-7C8E29E6EC2F","slug":"beachwear","name":"Beachwear"},{"id":372,"Guid":"B932CBCF-098F-4099-B294-3B4C4E69F047","slug":"business-casual","name":"Business Casual"},{"id":376,"Guid":"D8F871F3-8046-4EFB-89C5-AA0339FD59BE","slug":"formal","name":"Formal"}]
         },
         {"name":"Neighbourhoods",
         "slug":"location",
         "taxonomies":[{"id":419,"Guid":"D090D271-9BEC-482D-832F-25BEA5088FA8","slug":"al-jaddaf","name":"AlJaddaf"},{"id":420,"Guid":"9A5D9108-DF3D-47B0-B198-795456BF578F","slug":"bur-dubai","name":"Bur Dubai"},{"id":422,"Guid":"93DA22C0-B39E-4FE9-A4AA-6DCC49A58CA9","slug":"business-bay","name":"Business Bay"},{"id":424,"Guid":"BAD3F322-D944-446E-B942-453B43E5651D","slug":"city-walk","name":"City Walk"},{"id":418,"Guid":"D6FF0C78-53F1-458E-84BD-D6FE41478903","slug":"deira","name":"Deira"},{"id":421,"Guid":"C10C7A42-39BA-40BB-AC70-8501EC85EB3D","slug":"difc","name":"DIFC"},{"id":417,"Guid":"3A53BBF0-5346-4D49-9577-93D36AF5B516","slug":"dubai-marina","name":"Dubai Marina"},{"id":444,"Guid":"2AA42807-BF94-4D13-A48A-525D9592BB5B","slug":"dubai-production-city","name":"Dubai Production City"},{"id":445,"Guid":"F63EB76C-5C25-43F1-84C6-775339D66FD5","slug":"garhood","name":"Garhood"},{"id":427,"Guid":"01D2BCAD-4036-4B97-83AF-BCCB856C2361","slug":"jbr","name":"JBR"},{"id":425,"Guid":"40BC7F17-3ED7-4CD8-A80D-2E0EB4C09A26","slug":"jumeirah","name":"Jumeirah"},{"id":685,"Guid":"20CB065D-1887-429C-9072-3E1B4EF82BC1","slug":"satwa","name":"Satwa"},{"id":684,"Guid":"58399BDF-4698-4E64-9AD1-AC9083CA237B","slug":"test-neighbourhood","name":"Test Neighbourhood"},{"id":428,"Guid":"53053B70-DD4C-409C-A85D-E8144ECC1159","slug":"the-palm","name":"ThePalm"}]
         }
      
      ]
    }''';

    Map<String, dynamic> jsonData = json.decode(jsonString);
    List<dynamic> dataJson = jsonData['data'];
    List<Data> dataList = dataJson.map((data) => Data.fromJson(data)).toList();

    setState(() {
      this.dataList = dataList;
    });
  }

  @override
  Widget build(BuildContext context) {
    String selectedOption = 'Nearest Me';

    final List<RadioItem> radioItems = [
      RadioItem(title: 'Nearest Me', value: 'Nearest Me'),
      RadioItem(title: 'Trending This Week', value: 'Trending This Week'),
      RadioItem(title: 'Newest Added', value: 'Newest Added'),
      RadioItem(title: 'Alphabetical', value: 'Alphabetical'),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Filter  Options',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          // Selected Items View
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: selectedItems.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              Taxonomy removedItem =
                                  selectedItems.removeAt(index);
                              uncheckItem(removedItem);
                            });
                          },
                          icon: const Icon(
                            Icons.close,
                            size: 18,
                          )),
                      Text(selectedItems[index].name),
                    ],
                  ),
                );
              },
            ),
          ),
          for (RadioItem item in radioItems)
            Container(
              color: Colors.white,
              child: CustomRadioListTile(
                radioItem: item,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value ?? ''; // handle null case if needed
                  });
                },
              ),
            ),
          const SizedBox(height: 8),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpansionPanelList(
                  elevation: 1,
                  expandedHeaderPadding: const EdgeInsets.all(0),
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      dataList[index].isExpanded = isExpanded;
                    });
                  },
                  children: dataList.map<ExpansionPanel>((Data data) {
                    return ExpansionPanel(
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        String checkedItemCount =
                            getCheckedItemCount(data.taxonomies).toString();
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(data.name),
                              getCheckedItemCount(data.taxonomies) > 0
                                  ? Text(
                                      ' ($checkedItemCount)',
                                      style: TextStyle(
                                          color: Colors.pink[900],
                                          fontWeight: FontWeight.bold),
                                    )
                                  : const Text("")
                            ],
                          ),
                        );
                      },
                      body: Column(
                        children: data.isExpanded
                            ? data.taxonomies
                                .asMap()
                                .entries
                                .map(
                                  (entry) => ListTile(
                                    title: Text(entry.value.name),
                                    leading: CustomCheckbox(
                                      value: entry.value.isSelected,
                                      onChanged: (value) {
                                        setState(() {
                                          entry.value.isSelected = value!;
                                          if (value) {
                                            selectedItems.add(entry.value);
                                          } else {
                                            selectedItems.remove(entry.value);
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                )
                                .toList()
                            : [],
                      ),
                      isExpanded: data.isExpanded,
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  int getCheckedItemCount(List<Taxonomy> taxonomies) {
    return taxonomies.where((taxonomy) => taxonomy.isSelected).length;
  }

  void uncheckItem(Taxonomy removedItem) {
    for (Data data in dataList) {
      for (Taxonomy taxonomy in data.taxonomies) {
        if (taxonomy.id == removedItem.id) {
          setState(() {
            taxonomy.isSelected = false;
          });
          return;
        }
      }
    }
  }
}
