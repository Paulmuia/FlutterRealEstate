class Featured {
  late List<Rooms>_rooms;
  List<Rooms> get rooms =>_rooms;

  Featured({required rooms}){
    this._rooms=rooms;
  }

  Featured.fromJson(Map<String, dynamic> json) {
    if (json['rooms'] != null) {
      _rooms = <Rooms>[];
      json['rooms'].forEach((v) {
        rooms!.add(new Rooms.fromJson(v));
      });
    }
  }
}

class Rooms {
  int? id;
  String? roomNo;
  String? plotImage;
  String? overview;
  String? features;
  String? houseValue;
  String? livingArea;
  String? kitchen;
  String? bathroom;
  String? bedArea;
  int? plot;
  int? owner;

  Rooms(
      {this.id,
      this.roomNo,
      this.plotImage,
      this.overview,
      this.features,
      this.houseValue,
      this.livingArea,
      this.kitchen,
      this.bathroom,
      this.bedArea,
      this.plot,
      this.owner});

  Rooms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roomNo = json['room_no'];
    plotImage = json['plot_image'];
    overview = json['overview'];
    features = json['features'];
    houseValue = json['house_value'];
    livingArea = json['livingArea'];
    kitchen = json['kitchen'];
    bathroom = json['bathroom'];
    bedArea = json['bedArea'];
    plot = json['plot'];
    owner = json['owner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['room_no'] = this.roomNo;
    data['plot_image'] = this.plotImage;
    data['overview'] = this.overview;
    data['features'] = this.features;
    data['house_value'] = this.houseValue;
    data['livingArea'] = this.livingArea;
    data['kitchen'] = this.kitchen;
    data['bathroom'] = this.bathroom;
    data['bedArea'] = this.bedArea;
    data['plot'] = this.plot;
    data['owner'] = this.owner;
    return data;
  }
}