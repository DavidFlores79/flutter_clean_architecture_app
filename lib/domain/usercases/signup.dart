import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_app/core/usecase/usecase.dart';
import 'package:flutter_clean_architecture_app/data/models/signup_req_params.dart';
import 'package:flutter_clean_architecture_app/domain/repository/auth.dart';
import 'package:flutter_clean_architecture_app/service_locator.dart';

class SignupUsecase implements Usecase<Either, SignupReqParams> {

  
  @override
  Future<Either> call({SignupReqParams ? param}) async {
    // implement repository
    return sl<AuthRepository>().signup(param!);
  }

}