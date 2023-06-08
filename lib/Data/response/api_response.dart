import 'package:untitled/Data/response/status.dart';

class ApiResposne<T>{

  Status? status;
  T? data;
  String? message;

  ApiResposne(this.status, this.data, this.message);

  ApiResposne.loading() : status = Status.LOADING;
  ApiResposne.error(this.message) :status = Status.ERROR;
  ApiResposne.completed(this.data) :status = Status.COMPLETED;

  @override
  String toString(){
    return 'Status :$status \n Message : $message \n Data : $data';
  }
}