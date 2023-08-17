class User {
  final String? fullname;
  final String? first;
  final String? last;
  final String? email;
  final String? mobile;
  final String? pass;
  final String? cpass;

  User({
    this.fullname,
    this.first,
    this.last,
    this.email,
    this.mobile,
    this.pass,
    this.cpass,
  });

  User copyWith({
    String? fullname,
    String? first,
    String? last,
    String? email,
    String? mobile,
    String? pass,
    String? cpass,
  }) =>
      User(
        fullname: fullname ?? this.fullname,
        first: first ?? this.first,
        last: last ?? this.last,
        email: email ?? this.email,
        mobile: mobile ?? this.mobile,
        pass: pass ?? this.pass,
        cpass: cpass ?? this.cpass,
      );
}
