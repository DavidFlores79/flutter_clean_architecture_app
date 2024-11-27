// To parse this JSON data, do
//
//     final signupReqParams = signupReqParamsFromMap(jsonString);

class SignupReqParams {
    String name;
    String email;
    String password;

    SignupReqParams({
        required this.name,
        required this.email,
        required this.password,
    });

    factory SignupReqParams.fromMap(Map<String, dynamic> json) => SignupReqParams(
        name: json["name"],
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "password": password,
    };
}
