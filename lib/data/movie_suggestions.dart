import 'package:disney_redesign/models/movie_model.dart';

List movieSuggestions = [
  {
    'row_name': 'You might like this',
    'isExpanded': false,
    'movie_data': [
      Movie(
          name: 'Incredibles',
          imgUrl:
              'https://i.pinimg.com/564x/d1/4f/ef/d14fefbe6c177c85130c0f0125abac7f.jpg'),
      Movie(
          imgUrl:
              'https://i.pinimg.com/564x/60/ce/b4/60ceb4e34e5f6555c3858a9e996e4a08.jpg',
          name: 'Mandelorian'),
      Movie(
          imgUrl:
              'https://i.pinimg.com/564x/56/a9/dc/56a9dc6327e936c08b049f43f90a14b8.jpg',
          name: "Finding Dory"),
      Movie(
          imgUrl:
              'https://imgs.search.brave.com/HR5lQJysTNKLWcQ8W-1nqBm5lEpNeQtIhxNqyi_abeM/rs:fit:675:1000:1/g:ce/aHR0cHM6Ly9pbWFn/ZS50bWRiLm9yZy90/L3Avb3JpZ2luYWwv/a2dudVVmSjFqdGw2/d3N6Rk1KeGthVjU5/cVp2LmpwZw',
          name: 'Wall E'),
      Movie(
          imgUrl:
              'https://imgs.search.brave.com/jfwlDKJ1GMmT3PhR_fjTCcq8s_lXNfodnD2iKaOzUuU/rs:fit:800:1200:1/g:ce/aHR0cHM6Ly9pbWFn/ZS50bWRiLm9yZy90/L3Avb3JpZ2luYWwv/aEhSdktsNHp3UzIz/NGZjanlwYTgyQTJF/Y2pyLmpwZw',
          name: 'MOnster inc'),
    ]
  },
  {
    'row_name': 'Keep watching',
    'isExpanded': false,
    'movie_data': [
      Movie(
        imgUrl:
            'https://imgs.search.brave.com/skO9NlDyI_rqJrsvSxb7TUWqjMvvPnk_kB1famjLxTw/rs:fit:770:1100:1/g:ce/aHR0cDovL2Nkbi5j/b2xsaWRlci5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMTgv/MDQvc29sby1hLXN0/YXItd2Fycy1zdG9y/eS11ay1wb3N0ZXIu/anBn',
        name: 'Solo Star Wars',
      ),
      Movie(
          imgUrl:
              'https://imgs.search.brave.com/rSMpOzOE76ralXxb6PPr5LXD3ZNZtT05UX1JJsAxfQY/rs:fit:950:1200:1/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzbXVnLmNv/bS9kb3dubG9hZC85/NTB4MTUzNC9lNWE5/MDkvc3Rhci13YXJz/LXRoZS1sYXN0LWpl/ZGktMjAxNy1tb3Zp/ZS1wb3N0ZXItcmVk/LmpwZw',
          name: 'The last jedi'),
      Movie(
          imgUrl:
              'https://imgs.search.brave.com/cdklmG4iJDoZePRN0hZi4K5CGB3yvNjixrrJ-L3F0Kc/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9pbWFn/ZS50bWRiLm9yZy90/L3Avb3JpZ2luYWwv/ako4VG5IdldIYVZh/ZFc1SkpqR1lzTTA3/ajlpLmpwZw',
          name: 'Cars 3')
    ],
  },
  {
    'row_name': 'Your Watchlist',
    'isExpanded': false,
    'movie_data': [
      Movie(
          imgUrl:
              'https://imgs.search.brave.com/ezjbsZ1MCZw2BSN6IJMybQJ-AiznjhiSxtiIIaE_Fqk/rs:fit:504:736:1/g:ce/aHR0cHM6Ly9pMS53/cC5jb20vd3d3LmJh/ZHRhc3RlLml0L3dw/L3dwLWNvbnRlbnQv/dXBsb2Fkcy8yMDE1/LzAzL2luc2lkZV9v/dXRfdmVyMTguanBn/P3Jlc2l6ZT01MDQl/MkM3MzYmcXVhbGl0/eT04NSZzdHJpcD1h/bGw',
          name: 'Inside Out'),
      Movie(
          imgUrl:
              'https://imgs.search.brave.com/4HISDGGs5OzgE3NMVRlEO2bwWF9Yng2yb76D7p5Yhmk/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/dGhlbW92aWVkYi5v/cmcvdC9wL29yaWdp/bmFsLzlTcElncndX/OHZSazFSVXVzdmFu/T1JqNzVvYy5qcGc',
          name: 'The sleeping beauty'),
    ]
  },
  {
    'row_name': 'Trending Now',
    'movie_data': [
      Movie(
          imgUrl:
              'https://imgs.search.brave.com/eCms2J1krRjSpr40Sq0qPM8VFjz83GzojVfH_ccI5Zs/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly93d3cu/Zml6LXguY29tL3dw/LWNvbnRlbnQvdXBs/b2Fkcy8yMDIxLzEx/L01hcnZlbHMtU1BJ/REVSTUFOLU5PLVdB/WS1IT01FLU5ldy1Q/b3N0ZXIuanBlZw',
          name: 'Spiderman no way home'),
      Movie(
          imgUrl:
              'https://imgs.search.brave.com/R5PlAt0iRlRCMlvgf8k4CMPAWoATTK_5SVs5lsKvxGg/rs:fit:540:810:1/g:ce/aHR0cHM6Ly9sdW1p/ZXJlLWEuYWthbWFp/aGQubmV0L3YxL2lt/YWdlcy91a19zaG93/c190b3ktc3Rvcnkt/aW4tY29uY2VydF9z/aG93Y2FzZV9wb3N0/ZXJfYjEwMDdhNzYu/anBlZz9yZWdpb249/MCUyQzAlMkM1NDAl/MkM4MTA',
          name: 'The toy story'),
      Movie(
          imgUrl:
              'https://imgs.search.brave.com/6hxuiKTOOWC_3yxOHx4oZV06iQ9QOHWg3wwEZLZxh2s/rs:fit:1086:1200:1/g:ce/aHR0cDovL3d3dy5y/ZWVsbWFtYS5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMTUv/MTAvR29vc2VidW1w/cy1tb3ZpZS1wb3N0/ZXIuanBn',
          name: 'GooseBumps'),
    ],
    'isExpanded': true,
  }
];
