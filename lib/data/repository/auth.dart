import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_app/data/source/auth_api_service.dart';
import 'package:flutter_clean_architecture_app/domain/repository/auth.dart';
import 'package:flutter_clean_architecture_app/service_locator.dart';

import '../models/signup_req_params.dart';

class AuthRepositoryImp extends AuthRepository {


  @override
  Future<Either> signup(SignupReqParams signupReq) {
    //implementation of Auth API Service
    return sl<AuthApiService>().signup(signupReq);
  }

}