class UserCreate {
  bool status;
  String errNum;
  String msg;
  Users users;

  UserCreate({this.status, this.errNum, this.msg, this.users});

  UserCreate.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    users = json['users'] != null ? new Users.fromJson(json['users']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['errNum'] = this.errNum;
    data['msg'] = this.msg;
    if (this.users != null) {
      data['users'] = this.users.toJson();
    }
    return data;
  }
}

class Users {
  String name;
  String email;
  String phone;
  String updatedAt;
  String createdAt;
  int id;

  Users(
      {this.name,
      this.email,
      this.phone,
      this.updatedAt,
      this.createdAt,
      this.id});

  Users.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    return data;
  }
}
