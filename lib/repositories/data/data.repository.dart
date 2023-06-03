import 'package:portfolioapp/models/data.dart';

class DataRepository {
  List<DataModel> getRecentActivities() {
    try {
      final values = [
        {
          "guid": "ac0f8cc8-06bd-4b21-b6c4-f0eb0000276e",
          "icon": 'assets/drop.svg',
          "label": 'Water Bill',
          "amount": "\$120",
          "category": "drop",
        },
        {
          "guid": "c93a3fb9-305a-452c-b673-dafbacf41365",
          "icon": 'assets/salary.svg',
          "label": 'Income Salary',
          "amount": "\$3500",
          "category": "salary",
        },
        {
          "guid": "034c2e0c-b352-4a30-956e-ceb8ac0dffa4",
          "icon": 'assets/electricity.svg',
          "label": 'Electric Bill',
          "amount": "\$150",
          "category": "electricity",
        },
        {
          "guid": "903d1839-a22a-4ea1-ac91-4b628fc16967",
          "icon": 'assets/wifi.svg',
          "label": 'Internet Bill',
          "amount": "\$60",
          "category": "wifi",
        },
      ];

      final List<DataModel> data = List<DataModel>.from((values).map<DataModel>(
        (item) => DataModel.fromMap(item),
      ));

      return data;
    } catch (e) {
      throw e.toString();
    }
  }

  List<DataModel> getUpcomingPayments() {
    try {
      final values = [
        {
          "guid": "b706d0a6-80e5-4c78-b49b-6e64018cd725",
          "icon": 'assets/home.svg',
          "label": 'Home Rent',
          "amount": "\$1500",
          "category": "home",
        },
        {
          "guid": "148925ff-14ff-4f5d-a2f4-5a6fd5e44997",
          "icon": 'assets/salary.svg',
          "label": 'Car Insurance',
          "amount": "\$150",
          "category": "salary",
        },
      ];

      final List<DataModel> data = List<DataModel>.from((values).map<DataModel>(
        (item) => DataModel.fromMap(item),
      ));

      return data;
    } catch (e) {
      throw e.toString();
    }
  }
}
