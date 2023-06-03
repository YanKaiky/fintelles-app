import 'package:portfolioapp/models/transfers.dart';

class TransfersRepository {
  List<TransfersModel> getTransactionHistory() {
    try {
      final values = [
        {
          "guid": "148925ff-14ff-4f5d-a2f4-5a6fd5e44997",
          "avatar":
              'https://www.psicologo.com.br/wp-content/uploads/10-caracteristicas-de-pessoas-carismaticas-1024x768.jpg',
          "label": 'Car Insurance',
          "amount": "\$350",
          "time": "10:42:23 AM",
          "status": "Completed",
        },
        {
          "guid": "0598244a-5e76-4dc8-bd4d-f58b711249f2",
          "avatar":
              'https://towty.com.br/wp-content/uploads/2022/08/Yan_kaiky_8429-530x400.jpg',
          "label": 'Loan',
          "amount": "\$350",
          "time": "12:42:00 PM",
          "status": "Completed",
        },
        {
          "guid": "dc1b4326-abb5-4328-8def-b2138ab0f743",
          "avatar":
              'https://cajamar.sp.gov.br/noticias/wp-content/uploads/sites/2/2021/07/site-vacinacao-33-anos.png',
          "label": 'Online Payment',
          "amount": "\$154",
          "time": "10:42:23 PM",
          "status": "Completed",
        },
      ];

      final List<TransfersModel> data =
          List<TransfersModel>.from((values).map<TransfersModel>(
        (item) => TransfersModel.fromMap(item),
      ));

      return data;
    } catch (e) {
      throw e.toString();
    }
  }
}
