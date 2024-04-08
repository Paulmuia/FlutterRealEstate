class Featured {
  late List<Rooms> _rooms;
  List<Rooms> get rooms =>_rooms;

  Featured({required rooms}){
    this.rooms;
  }

  Featured.fromJson(Map<String, dynamic> json) {
    if (json['rooms'] != null) {
      _rooms = <Rooms>[];
      json['rooms'].forEach((v) {
        rooms.add(new Rooms.fromJson(v));
      });
    }
  }

}

class Rooms {
  int? id;
  int? size;
  int? price;
  int? bath;
  int? beds;
  String? roomNo;
  String? overview;
  String? features;
  String? houseValue;
  String? livingArea;
  String? kitchen;
  String? bathroom;
  String? bedArea;
  int? plot;
  int? agent;

  Rooms(
      {this.id,
      this.size,
      this.price,
      this.bath,
      this.beds,
      this.roomNo,
      this.overview,
      this.features,
      this.houseValue,
      this.livingArea,
      this.kitchen,
      this.bathroom,
      this.bedArea,
      this.plot,
      this.agent});

  Rooms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    size = json['size'];
    price = json['price'];
    bath = json['bath'];
    beds = json['beds'];
    roomNo = json['room_no'];
    overview = json['overview'];
    features = json['features'];
    houseValue = json['house_value'];
    livingArea = json['livingArea'];
    kitchen = json['kitchen'];
    bathroom = json['bathroom'];
    bedArea = json['bedArea'];
    plot = json['plot'];
    agent = json['agent'];
  }

}