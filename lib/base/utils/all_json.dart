List<Map<String, dynamic>> ticketList = [
  {
    'from': {
      'code':"NYC",
      'name':"New-York"
    },
    'to': {
      'code':"LDN",
      'name':"London"
    },
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time':"08:00 AM",
    "number": 23
  },
  {
    'from': {
      'code':"DK",
      'name':"Dhaka"
    },
    'to': {
      'code':"SH",
      'name':"Shanghai"
    },
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time':"09:00 AM",
    "number":45
  },
  {
    'from': {
      'code':"DK",
      'name':"Dhaka"
    },
    'to': {
      'code':"GZ",
      'name':"Guangzhou"
    },
    'flying_time': '4H 20M',
    'date': "12 MAY",
    'departure_time':"11:00 AM",
    "number":55
  },
  {
    'from': {
      'code':"NYC",
      'name':"New-York"
    },
    'to': {
      'code':"BJ",
      'name':"Beijing"
    },
    'flying_time': '9H 35M',
    'date': "11 MAY",
    'departure_time':"10:00 AM",
    "number":53
  },
  {
    'from': {
      'code':"DK",
      'name':"Dhaka"
    },
    'to': {
      'code':"SH",
      'name':"Shanghai"
    },
    'flying_time': '4H 20M',
    'date': "10 MAY",
    'departure_time':"09:00 AM",
    "number":45
  },
  {
    'from': {
      'code':"CH",
      'name':"Chongdu"
    },
    'to': {
      'code':"GZ",
      'name':"Guangzhou"
    },
    'flying_time': '2H 20M',
    'date': "2 MAY",
    'departure_time':"11:00 AM",
    "number":50
  },
];
class AppRoutes{

  static const homePage = "/";

  static const allTickets = "/all_tickets";

  static const ticketScreen = "/ticket_screen";

  static const allHotels = "/all_hotels";

  static const hotelDetail = "/hotel_details";

}

List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotel_room.png',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25,
    'detail':'This hotel room is designed with a clean and modern style. It includes a comfortable bed, a work desk, and a sitting area near the window. The room uses warm lighting and neutral colours to create a relaxing atmosphere. Large windows provide natural light and a nice view. Overall, the room is suitable for both rest and work. The hotel room is bright, clean, and designed for comfort. A large bed with soft pillows and fresh white sheets invites you to rest and relax. Beside the bed, there’s a small table with a lamp and a place to charge your phone. The room includes a modern bathroom with a big mirror, soft towels, and all the things you need for a pleasant stay. A wide window lets in natural light and shows a beautiful view of the city or pool, depending on the room. Whether you are here for work or holiday, the space feels calm, private, and welcoming. Every detail from the quiet air conditioning to the smooth lighting is made to help you feel at ease. This kind of room suits an app that helps people find high-quality hotels, book stays easily, and enjoy a worry-free travel experience.',
    'images':[
      'hotel_room_view_1.png',
      'hotel_room_view_2.png',
      'hotel_room_view_3.png',
]
  },
  {
    'image': 'city_view.png',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40,
    'detail' : 'A balcony with modern chairs overlooks the tall buildings of Dubai, including the famous Burj Khalifa. Below, a large blue fountain adds beauty to the city view. The sky is clear and blue, and the buildings shine in the sunlight. The scene gives a feeling of luxury, success, and a global lifestyle, with the words "Global Will" suggesting a service or app for people with international goals.This view represents more than just a city—it shows growth, progress, and dreams coming true. It’s a place where business meets beauty, and where opportunities are always rising. The calm yet powerful setting inspires people to think big, plan ahead, and connect with the world. Whether you are looking to manage global assets, prepare your future, or simply explore new possibilities, this experience reminds you that the world is full of potential. With comfort, clarity, and confidence, Global Will supports you in making smart, international decisions from anywhere.',
    'images':[
      'city_view_1.png',
      'city_view_2.png',
      'city_view_3.png',
  ]
  },
  {
    'image': 'pool_view.png',
    'place': 'Best city pool',
    'destination': 'Dubai',
    'price': 68,
    'detail' : 'A beautiful outdoor dining area is set beside a clear blue swimming pool, surrounded by palm trees and modern buildings. White umbrellas and neatly arranged tables create a calm and relaxing atmosphere. A waiter is preparing the tables, ready to serve guests. The bright sky and clean design give a peaceful, holiday-like feeling, perfect for a relaxing getaway or luxury stay.This space invites guests to slow down and enjoy the moment. With delicious food, a refreshing pool, and warm sunshine, it’s the ideal setting to relax, meet others, or enjoy a quiet break. The calm water and fresh air bring a sense of balance and joy. It’s more than just a meal—it’s an experience of comfort and care. Whether for a vacation, a business trip, or simply a treat for yourself, this place shows the kind of service and peace people look for. Perfect for an app or service that focuses on luxury stays, fine dining, or premium travel experiences, it reminds users to enjoy life’s best moments in beautiful surroundings.',
    'images':[
      'pool_view_1.png',
      'pool_view_2.png',
      'pool_view_3.png',
  ]
  },
];
