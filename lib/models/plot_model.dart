class Plot {
  late List<Plots> _plots;
  List<Plots> get plots => _plots;

  Plot({required plots}){
    this._plots=plots;
  }

  Plot.fromJson(Map<String, dynamic> json) {
    if (json['plots'] != null) {
      _plots = <Plots>[];
      json['plots'].forEach((v) {
        plots.add(Plots.fromJson(v));
      });
    }
  }

}

class Plots {
  int? id;
  String? name;
  Null? location;
  Null? image;

  Plots({this.id, this.name, this.location, this.image});

  Plots.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    location = json['location'];
    image = json['image'];
  }

}