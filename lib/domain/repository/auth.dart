// this is our contract, business logic layer
//<>
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture_app/data/models/signup_req_params.dart';

abstract class AuthRepository {

  Future<Either> signup(SignupReqParams signupReq);
}