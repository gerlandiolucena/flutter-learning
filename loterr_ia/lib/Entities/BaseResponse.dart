
class BaseResponse<T> {
   final bool success;
   final List<T> data;

   BaseResponse({this.success, this.data});

   factory BaseResponse.fromJson(Map<String, dynamic> json) {
      return BaseResponse(
        success: json['success'],
        data: json['data']
      );
   }
}