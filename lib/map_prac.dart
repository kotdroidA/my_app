main(){
  var map_name = {

    'Name':'value1',
    'yearOfExperience':2,
    'Avg.Rating':2.3,
    'CanLocateToOffice': true
  };
  map_name['Name']="Aman deep";

  print( map_name);
  print(map_name.isEmpty);
  print(map_name.isNotEmpty);
  print(map_name.length);
  print(map_name.keys);
  print(map_name.values);
  print(map_name.containsKey('Name'));
  print(map_name.containsValue(false));
  print(map_name.remove('CanLocateToOffice'));
  print(map_name);

}
