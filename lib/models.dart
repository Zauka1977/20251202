class Player {
  int? id;
  int number;
  String name;
  String position;
  Player({this.id, required this.number, required this.name, this.position = ''});
  Map<String, dynamic> toMap() => {'id': id, 'number': number, 'name': name, 'position': position};
  factory Player.fromMap(Map<String,dynamic> m) => Player(id:m['id'], number:m['number'], name:m['name'], position:m['position'] ?? '');
}
class MatchModel {
  int? id;
  String type='';
  String ageGroup='';
  String opponent='';
  String result='';
  String date='';
  Map<String,dynamic> toMap()=>{'id':id,'type':type,'ageGroup':ageGroup,'opponent':opponent,'result':result,'date':date};
}
class Stat {
  int? id;
  int matchId=0;
  int playerId=0;
  Map<String,dynamic> values = {};
  Stat({this.id, required this.matchId, required this.playerId, Map<String,dynamic>? values}) { this.values = values ?? {}; }
  Map<String,dynamic> toMap()=>{'id':id,'matchId':matchId,'playerId':playerId,'values':values};
}
