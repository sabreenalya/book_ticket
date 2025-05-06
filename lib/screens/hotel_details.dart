import 'package:book_ticket/base/res/styles/app_styles.dart';
import 'package:book_ticket/controller/text_expansion_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../base/utils/all_json.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppStyles.primaryColor,
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              //title: Text(hotelList[index]["place"]),
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/${(hotelList[index]["image"])}",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4
                      ),
                        color: Colors.black.withOpacity(0.5),
                        child: Text(
                            hotelList[index]["place"],
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                  blurRadius: 10.0,
                                  color: AppStyles.primaryColor
                                )
                              ]
                            )
                        ))
                  )],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(padding: EdgeInsets.all(16.0), child:
                ExpandedTextWidget(text: hotelList[index]["detail"]
                )
                /*Text(""
                  "This hotel room is designed with a clean and modern style. It includes a comfortable bed, a work desk, and a sitting area near the window. The room uses warm lighting and neutral colours to create a relaxing atmosphere. Large windows provide natural light and a nice view. Overall, the room is suitable for both rest and work."
                  "")*/),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "More Images",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotelList[index]["images"].length,
                  itemBuilder: (context, imagesIndex) {
                    return Container(
                      margin: EdgeInsets.all(8),
                        child: Image.asset("assets/images/${hotelList[index]["images"][imagesIndex]}")
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatelessWidget {
  ExpandedTextWidget({super.key, required this.text});

  final String text;
  final TextExpansionController controller = Get.put(TextExpansionController());

  @override
  Widget build(BuildContext context) {

    return Obx(() {
      var textWidget = Text(
        text,
        maxLines: controller.isExpanded.value ? null : 6,
        overflow: controller.isExpanded.value
            ? TextOverflow.visible
            : TextOverflow.ellipsis,

      );
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget,
          GestureDetector(
            onTap: () {
              controller.toggleExpansion();
            },
            child: Text(
              controller.isExpanded.value ? 'Less' : 'More',
              style: AppStyles.textStyle.copyWith(
                  color: AppStyles.primaryColor
              ),
            ),
          )
        ],
      );
    });
  }
}