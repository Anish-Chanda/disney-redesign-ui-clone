import 'package:disney_redesign/models/movie_model.dart';

List movieSuggestions = [
  {
    'row_name': 'You might like this',
    'isExpanded': false,
    'movie_data': [
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              'While trying to lead a quiet suburban life, a family of undercover superheroes are forced into action to save the world.',
          name: 'Incredibles',
          year: 2004,
          imdbRating: 7.7,
          duration: '1h 55m',
          imgUrl:
              'https://i.pinimg.com/564x/d1/4f/ef/d14fefbe6c177c85130c0f0125abac7f.jpg'),
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              'Snoopy embarks upon his greatest mission as he and his team take to the skies to pursue their archnemesis, while his best pal Charlie Brown begins his own epic quest back home to win the love of his life.',
          imdbRating: 7.0,
          year: 2015,
          duration: '1h 28m',
          imgUrl:
              'https://www.startpage.com/av/proxy-image?piurl=https%3A%2F%2Fimages.jdmagicbox.com%2Fcomp%2Fjd_social%2Fnews%2F2018jul25%2Fimage-143917-v8mbvbcucn.jpg&sp=1668914610Tf6004f549e26e88876988785de326f048b9da59717899a8078abbd64f784da82',
          name: 'The peanuts Movie'),
      //TODO: update trailer thumbnail from here
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              'Friendly but forgetful blue tang Dory begins a search for her long-lost parents and everyone learns a few things about the real meaning of family along the way.',
          imdbRating: 7.3,
          duration: '1h 43m',
          year: 2016,
          imgUrl:
              'https://i.pinimg.com/564x/56/a9/dc/56a9dc6327e936c08b049f43f90a14b8.jpg',
          name: "Finding Dory"),
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              'WALL-E, short for Waste Allocation Load Lifter Earth-class, is the last robot left on Earth. He spends his days tidying up the planet, one piece of garbage at a time.',
          imdbRating: 8.0,
          duration: '1h 19m',
          year: 2008,
          imgUrl:
              'https://imgs.search.brave.com/HR5lQJysTNKLWcQ8W-1nqBm5lEpNeQtIhxNqyi_abeM/rs:fit:675:1000:1/g:ce/aHR0cHM6Ly9pbWFn/ZS50bWRiLm9yZy90/L3Avb3JpZ2luYWwv/a2dudVVmSjFqdGw2/d3N6Rk1KeGthVjU5/cVp2LmpwZw',
          name: 'Wall E'),
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              'In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, two monsters realize things may not be what they think.',
          imdbRating: 8.1,
          duration: '1h 43m',
          year: 2001,
          imgUrl:
              'https://imgs.search.brave.com/jfwlDKJ1GMmT3PhR_fjTCcq8s_lXNfodnD2iKaOzUuU/rs:fit:800:1200:1/g:ce/aHR0cHM6Ly9pbWFn/ZS50bWRiLm9yZy90/L3Avb3JpZ2luYWwv/aEhSdktsNHp3UzIz/NGZjanlwYTgyQTJF/Y2pyLmpwZw',
          name: 'MOnster inc'),
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              "Aspiring musician Miguel, confronted with his family's ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.",
          imdbRating: 8.4,
          duration: '1h 43m',
          year: 2017,
          imgUrl:
              'https://upload.wikimedia.org/wikipedia/en/9/98/Coco_%282017_film%29_poster.jpg',
          name: 'Coco')
    ]
  },
  {
    'row_name': 'Keep watching',
    'isExpanded': false,
    'movie_data': [
      Movie(
        musicBy: 'Randy Newman',
        director: 'Brian Fee',
        stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
        description:
            'When the newly crowned Queen Elsa accidentally uses her power to turn things into ice to curse her home in infinite winter, her sister Anna teams up with a mountain man, his playful reindeer, and a snowman to change the weather condition.',
        imdbRating: 7.4,
        duration: '1h 43m',
        year: 2013,
        imgUrl:
            'https://lumiere-a.akamaihd.net/v1/images/p_frozen_18373_3131259c.jpeg',
        name: 'Frozen',
      ),
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              'The Star Wars saga continues as new heroes and galactic legends go on an epic adventure, unlocking mysteries of the Force and shocking revelations of the past.',
          imdbRating: 6.9,
          duration: '1h 43m',
          year: 2017,
          imgUrl:
              'https://imgs.search.brave.com/rSMpOzOE76ralXxb6PPr5LXD3ZNZtT05UX1JJsAxfQY/rs:fit:950:1200:1/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzbXVnLmNv/bS9kb3dubG9hZC85/NTB4MTUzNC9lNWE5/MDkvc3Rhci13YXJz/LXRoZS1sYXN0LWpl/ZGktMjAxNy1tb3Zp/ZS1wb3N0ZXItcmVk/LmpwZw',
          name: 'The last jedi'),
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              "Lightning McQueen sets out to prove to a new generation of racers that he's still the best race car in the world.",
          imdbRating: 6.7,
          duration: '1h 43m',
          year: 2017,
          imgUrl:
              'https://imgs.search.brave.com/cdklmG4iJDoZePRN0hZi4K5CGB3yvNjixrrJ-L3F0Kc/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9pbWFn/ZS50bWRiLm9yZy90/L3Avb3JpZ2luYWwv/ako4VG5IdldIYVZh/ZFc1SkpqR1lzTTA3/ajlpLmpwZw',
          name: 'Cars 3'),
    ],
  },
  {
    'row_name': 'Your Watchlist',
    'isExpanded': false,
    'movie_data': [
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              'After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.',
          imdbRating: 8.2,
          duration: '1h 43m',
          year: 2015,
          imgUrl:
              'https://imgs.search.brave.com/ezjbsZ1MCZw2BSN6IJMybQJ-AiznjhiSxtiIIaE_Fqk/rs:fit:504:736:1/g:ce/aHR0cHM6Ly9pMS53/cC5jb20vd3d3LmJh/ZHRhc3RlLml0L3dw/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDE1/LzAzL2luc2lkZV9v/dXRfdmVyMTguanBn/P3Jlc2l6ZT01MDQl/MkM3MzYmcXVhbGl0/eT04NSZzdHJpcD1h/bGw',
          name: 'Inside Out'),
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              'A young princess is the subject of a tug-of-war among witches, as each struggles to find the suitable antidote to a death sentence inculcated by an evil sister.',
          imdbRating: 5.7,
          duration: '1h 43m',
          year: 2010,
          imgUrl:
              'https://imgs.search.brave.com/4HISDGGs5OzgE3NMVRlEO2bwWF9Yng2yb76D7p5Yhmk/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/dGhlbW92aWVkYi5v/cmcvdC9wL29yaWdp/bmFsLzlTcElncndX/OHZSazFSVXVzdmFu/T1JqNzVvYy5qcGc',
          name: 'The sleeping beauty'),
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              "Aspiring musician Miguel, confronted with his family's ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.",
          imdbRating: 8.4,
          duration: '1h 43m',
          year: 2017,
          imgUrl:
              'https://upload.wikimedia.org/wikipedia/en/9/98/Coco_%282017_film%29_poster.jpg',
          name: 'Coco')
    ]
  },
  {
    'row_name': 'Trending Now',
    'movie_data': [
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              "Aspiring musician Miguel, confronted with his family's ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.",
          imdbRating: 8.3,
          duration: '1h 43m',
          year: 2021,
          imgUrl:
              'https://imgs.search.brave.com/eCms2J1krRjSpr40Sq0qPM8VFjz83GzojVfH_ccI5Zs/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/Zml6LXguY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDIxLzEx/L01hcnZlbHMtU1BJ/REVSTUFOLU5PLVdB/WS1IT01FLU5ldy1Q/b3N0ZXIuanBlZw',
          name: 'Spiderman no way home'),
      Movie(
          musicBy: 'Randy Newman',
          director: 'Brian Fee',
          stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
          description:
              "A cowboy doll is profoundly threatened and jealous when a new spaceman action figure supplants him as top toy in a boy's bedroom.",
          imdbRating: 8.3,
          duration: '1h 43m',
          year: 1995,
          imgUrl:
              'https://imgs.search.brave.com/R5PlAt0iRlRCMlvgf8k4CMPAWoATTK_5SVs5lsKvxGg/rs:fit:540:810:1/g:ce/aHR0cHM6Ly9sdW1p/ZXJlLWEuYWthbWFp/aGQubmV0L3YxL2lt/YWdlcy91a19zaG93/c190b3ktc3Rvcnkt/aW4tY29uY2VydF9z/aG93Y2FzZV9wb3N0/ZXJfYjEwMDdhNzYu/anBlZz9yZWdpb249/MCUyQzAlMkM1NDAl/MkM4MTA',
          name: 'The toy story'),
      Movie(
        musicBy: 'Randy Newman',
        director: 'Brian Fee',
        stars: ['Owen Wilson', 'Cristela Alonzo', 'Chris Cooper'],
        description:
            "A teenager teams up with the daughter of young adult horror author R. L. Stine after the writer's imaginary demons are set free on the town of Madison, Delaware.",
        imdbRating: 6.3,
        duration: '1h 43m',
        year: 2015,
        imgUrl:
            'https://imgs.search.brave.com/6hxuiKTOOWC_3yxOHx4oZV06iQ9QOHWg3wwEZLZxh2s/rs:fit:1086:1200:1/g:ce/aHR0cDovL3d3dy5y/ZWVsbWFtYS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMTUv/MTAvR29vc2VidW1w/cy1tb3ZpZS1wb3N0/ZXIuanBn',
        name: 'GooseBumps',
      ),
    ],
    'isExpanded': true,
  }
];
