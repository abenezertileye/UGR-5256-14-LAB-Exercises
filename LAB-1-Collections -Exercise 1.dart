void main() {
  List<String> favoriteHobbies = [];

  favoriteHobbies.add('Reading');
  favoriteHobbies.add('Cooking');
  favoriteHobbies.add('Hiking');

  print('Favorite Hobbies: $favoriteHobbies');

  print('Is the list empty? ${favoriteHobbies.isEmpty}');

  favoriteHobbies.addAll(['Photography', 'Painting']);

  print('Updated Favorite Hobbies: $favoriteHobbies');

  favoriteHobbies.remove('Cooking');

  print('Favorite Hobbies after removing "Cooking": $favoriteHobbies');

  favoriteHobbies.sort();

  print('Sorted Favorite Hobbies: $favoriteHobbies');
}
