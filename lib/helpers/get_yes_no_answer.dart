import 'package:dio/dio.dart';
import 'package:yes_no/domain/entities/message.dart';
import 'package:yes_no/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future <Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final YesNoModel yesNoModel = YesNoModel.fromJson(response.data);

    return yesNoModel.toMessageEntity();
  }
}