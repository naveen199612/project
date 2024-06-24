import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';




class airbnb extends StatefulWidget {
  @override
  State<airbnb> createState() => _airbnb();
}

class _airbnb extends State<airbnb> {
  TextEditingController placeInput = TextEditingController();
  TextEditingController checkinDate = TextEditingController();
  TextEditingController checkoutDate = TextEditingController();
  TextEditingController adults = TextEditingController();
  var hotelsList = [];
  Map<String, dynamic>? parsedResponse;
  _getDetails() async {
    const apiKey = 'YOUR_RAPID_API_KEY';
    const apiUrl = 'https://airbnb13.p.rapidapi.com/search-location';
    Map<String, String> queryParams = {
      'location': placeInput.text,
      'checkin': checkinDate.text,
      'checkout': checkoutDate.text,
      'adults': adults.text,
    };
    Map<String, String> headers = {
      'X-RapidAPI-Key': apiKey,
      'X-RapidAPI-Host': 'airbnb13.p.rapidapi.com',
    };
    try {
      var response = await http.get(
        Uri.parse(apiUrl).replace(queryParameters: queryParams),
        headers: headers,
      );
      parsedResponse = jsonDecode(response.body);
      setState(() {
        hotelsList = parsedResponse?['results'] ?? [];
      });
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('airbnb'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: placeInput,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Destination",
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: checkinDate,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Checkin Date",
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101),
                      );
                      if (pickedDate != null) {
                        String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                        setState(() {
                          checkinDate.text = formattedDate;
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: checkoutDate,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Checkout Date",
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101),
                      );
                      if (pickedDate != null) {
                        String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                        setState(() {
                          checkoutDate.text = formattedDate;
                        });
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              controller: adults,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: "Number of Adults",
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _getDetails,
              child: Text('Search'),
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: hotelsList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(hotelsList[index]['name']),
                    subtitle: Text(hotelsList[index]['price'].toString()),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
