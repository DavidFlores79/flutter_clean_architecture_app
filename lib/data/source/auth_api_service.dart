import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture_app/core/constants/api_urls.dart';
import 'package:flutter_clean_architecture_app/core/network/dio_client.dart';
import 'package:flutter_clean_architecture_app/service_locator.dart';

import '../models/signup_req_params.dart';

abstract class AuthApiService {

  Future<Either> signup(SignupReqParams signupReq);
}

class AuthApiServiceImp extends AuthApiService {


  @override
  Future<Either> signup(SignupReqParams signupReq) async {
    // TODO: make http request
    try {
      final response = await sl<DioClient>().post(
        ApiUrls.register,
        data: signupReq.toMap(),
      );

      return Right(response);
    } on DioException catch (e) {
      return Left(e.response!.data['message']);
    }
  }

}