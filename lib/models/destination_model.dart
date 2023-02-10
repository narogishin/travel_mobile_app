import 'package:travel_ui/models/activity_model.dart';
import 'activities/activities.dart';

class Destination {
  String? imageUrl;
  String? city;
  String? description;
  List<Activity>? activities;

  Destination({
    this.imageUrl,
    this.city,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/Rif Mountains.jpg',
    name: 'Rif Mountains',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Cascades d’Akchour.jpg',
    name: 'Cascades d’Akchour',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Kasbah Museum.jpg',
    name: 'Kasbah Museum',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Chaouen Rural - Day tours.jpg',
    name: 'Chaouen Rural - Day tours',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/The Medina.jpg',
    name: 'The Medina',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Chouara Tannery.jpg',
    name: 'Chouara Tannery',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/University of al-Qarawiyyin (Mosque).jpg',
    name: 'University of al-Qarawiyyin (Mosque)',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/El Glaoui Palace.jpg',
    name: 'El Glaoui Palace',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Marinid Tombs.jpg',
    name: 'Marinid Tombs',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Jardin Jnan Sbil.jpg',
    name: 'Jardin Jnan Sbil',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Al-Attarine Madrasa.jpg',
    name: 'Al-Attarine Madrasa',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Bab Bou Jeloud.jpg',
    name: 'Bab Bou Jeloud',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Bou Inania Madrasa.jpg',
    name: 'Bou Inania Madrasa',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Menara gardens.jpg',
    name: 'Menara gardens',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Day trip to Imlil.jpg',
    name: 'Day trip to Imlil / High Atlas Mountains',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Majorelle Garden.jpg',
    name: 'Majorelle Garden',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
  Activity(
    imageUrl: 'assets/images/Jemaa el-Fnaa & Medina.jpg',
    name: 'Jemaa el-Fnaa & Medina',
    type: 'Tour',
    startTimes: ['09:00'],
    rating: 5,
    price: 0,
  ),
];

List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/Marrakech.jpg',
      city: 'Marrakech',
      description:
          'Between tradition and modernity, Marrakech is the promise of unequalled sensations. Strolling the Jemaa El-Fna square and the souks with their shimmering colours and oriental smells, the red city offers you a complete change of scenery. Horse-drawn carriage rides, sunny terraces, travelling artists and other day and night activities will give a tates of wishful comeback.',
      activities: marrakech_activities),
  Destination(
      imageUrl: 'assets/images/Chefchaouen.jpg',
      city: 'Chefchaouen',
      description:
          'Built on a mountainside, Chefchaouen is a city with a special vibes. It unique charm gives an impression of unreality. With its blue-rinsed houses, the whole city seems to be bathed in azure. You walk around as if you were in a dream.',
      activities: chaouen_activities),
  Destination(
      imageUrl: 'assets/images/Fez.jpg',
      city: 'Fez',
      description:
          'Fez has a special atmosphere. This 13th-century city is an imperial city of long-lasting multicultural history, that reserves unexpected surprises for its visitors.',
      activities: fes_activities),
  Destination(
      imageUrl: 'assets/images/Essaouira.jpg',
      city: 'Essaouira',
      description:
          'Crenellated walls, special wind, houses with white and blue facades, Essaouira, the ancient Mogador is the "Bride of the Atlantic".',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/Casablanca.jpg',
      city: 'Casablanca',
      description:
          'Beautiful palm trees lining its paths, with the Atlantic ocean over the horizon, and large business buildings in every corner : Casablanca is the economic lung of Morocco ; a bustling metropolis.',
      activities: activities),
];
