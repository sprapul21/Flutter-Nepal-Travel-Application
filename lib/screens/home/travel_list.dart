import 'package:flutter/material.dart';
import 'package:flutter_app/models/bhaktapur.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/screens/home/places.dart';
import 'TravelTile.dart';

class TravelList extends StatefulWidget {
  @override
  _TravelListState createState() => _TravelListState();
}

class _TravelListState extends State<TravelList> {
  @override
  Widget build(BuildContext context) {
    final travels = Provider.of<List<Trave>>(context);

    return ListView.builder(
      itemCount: travels.length,
      itemBuilder: (context, index) {
        return TravelTile(travel: travels[index]);
      },
    );
  }
}

class Bhaktapurlist extends StatefulWidget {
  @override
  _BhaktapurlistState createState() => _BhaktapurlistState();
}

class _BhaktapurlistState extends State<Bhaktapurlist> {
  @override
  Widget build(BuildContext context) {
    final bhaktapurs = Provider.of<List<Bhaktapur>>(context) ?? [];

    return ListView.builder(
      itemCount: bhaktapurs.length,
      itemBuilder: (context, index) {
        return BhaktapurTile(bhaktapur: bhaktapurs[index]);
      },
    );
  }
}

class Bhaktapurhotellist extends StatefulWidget {
  @override
  _BhaktapurhotellistState createState() => _BhaktapurhotellistState();
}

class _BhaktapurhotellistState extends State<Bhaktapurhotellist> {
  @override
  Widget build(BuildContext context) {
    final bhaktapurhotels = Provider.of<List<Hotelbhaktapur>>(context) ?? [];

    return ListView.builder(
      itemCount: bhaktapurhotels.length,
      itemBuilder: (context, index) {
        return BhaktapurhotelTile(bhaktapurhotel: bhaktapurhotels[index]);
      },
    );
  }
}

class Bhaktapurhotellist1 extends StatefulWidget {
  @override
  _Bhaktapurhotellist1State createState() => _Bhaktapurhotellist1State();
}

class _Bhaktapurhotellist1State extends State<Bhaktapurhotellist1> {
  @override
  Widget build(BuildContext context) {
    final bhaktapurhotels = Provider.of<List<Hotelbhaktapur>>(context) ?? [];

    return ListView.builder(
      itemCount: bhaktapurhotels.length,
      itemBuilder: (context, index) {
        return BhaktapurhotelTile1(bhaktapurhotel: bhaktapurhotels[index]);
      },
    );
  }
}

class Kathmanduhotellist extends StatefulWidget {
  @override
  _KathmanduhotellistState createState() => _KathmanduhotellistState();
}

class _KathmanduhotellistState extends State<Kathmanduhotellist> {
  @override
  Widget build(BuildContext context) {
    final kathmanduhotels = Provider.of<List<Hotelkathmandu>>(context) ?? [];

    return ListView.builder(
      itemCount: kathmanduhotels.length,
      itemBuilder: (context, index) {
        return KathmanduhotelTile(kathmanduhotel: kathmanduhotels[index]);
      },
    );
  }
}

class Kathmanduhotellist1 extends StatefulWidget {
  @override
  _Kathmanduhotellist1State createState() => _Kathmanduhotellist1State();
}

class _Kathmanduhotellist1State extends State<Kathmanduhotellist1> {
  @override
  Widget build(BuildContext context) {
    final kathmanduhotels = Provider.of<List<Hotelkathmandu>>(context) ?? [];

    return ListView.builder(
      itemCount: kathmanduhotels.length,
      itemBuilder: (context, index) {
        return KathmanduhotelTile1(kathmanduhotel: kathmanduhotels[index]);
      },
    );
  }
}

//start
class Lalitpurhotellist extends StatefulWidget {
  @override
  _LalitpurhotellistState createState() => _LalitpurhotellistState();
}

class _LalitpurhotellistState extends State<Lalitpurhotellist> {
  @override
  Widget build(BuildContext context) {
    final lalitpurhotels = Provider.of<List<Hotellalitpur>>(context) ?? [];

    return ListView.builder(
      itemCount: lalitpurhotels.length,
      itemBuilder: (context, index) {
        return LalitpurhotelTile(lalitpurhotel: lalitpurhotels[index]);
      },
    );
  }
}
//end

//start
class Lalitpurhotellist1 extends StatefulWidget {
  @override
  _Lalitpurhotellist1State createState() => _Lalitpurhotellist1State();
}

class _Lalitpurhotellist1State extends State<Lalitpurhotellist1> {
  @override
  Widget build(BuildContext context) {
    final lalitpurhotels = Provider.of<List<Hotellalitpur>>(context) ?? [];

    return ListView.builder(
      itemCount: lalitpurhotels.length,
      itemBuilder: (context, index) {
        return LalitpurhotelTile1(lalitpurhotel: lalitpurhotels[index]);
      },
    );
  }
}
//end

//start
class Pokharahotellist extends StatefulWidget {
  @override
  _PokharahotellistState createState() => _PokharahotellistState();
}

class _PokharahotellistState extends State<Pokharahotellist> {
  @override
  Widget build(BuildContext context) {
    final pokharahotels = Provider.of<List<Hotelpokhara>>(context) ?? [];

    return ListView.builder(
      itemCount: pokharahotels.length,
      itemBuilder: (context, index) {
        return PokharahotelTile(pokharahotel: pokharahotels[index]);
      },
    );
  }
}

//end

//start
class Pokharahotellist1 extends StatefulWidget {
  @override
  _Pokharahotellist1State createState() => _Pokharahotellist1State();
}

class _Pokharahotellist1State extends State<Pokharahotellist1> {
  @override
  Widget build(BuildContext context) {
    final pokharahotels = Provider.of<List<Hotelpokhara>>(context) ?? [];

    return ListView.builder(
      itemCount: pokharahotels.length,
      itemBuilder: (context, index) {
        return PokharahotelTile1(pokharahotel: pokharahotels[index]);
      },
    );
  }
}

//end

//start
class Lumbinihotellist extends StatefulWidget {
  @override
  _LumbinihotellistState createState() => _LumbinihotellistState();
}

class _LumbinihotellistState extends State<Lumbinihotellist> {
  @override
  Widget build(BuildContext context) {
    final lumbinihotels = Provider.of<List<Hotellumbini>>(context) ?? [];

    return ListView.builder(
      itemCount: lumbinihotels.length,
      itemBuilder: (context, index) {
        return LumbinihotelTile(lumbinihotel: lumbinihotels[index]);
      },
    );
  }
}

//end

//start
class Lumbinihotellist1 extends StatefulWidget {
  @override
  _Lumbinihotellist1State createState() => _Lumbinihotellist1State();
}

class _Lumbinihotellist1State extends State<Lumbinihotellist1> {
  @override
  Widget build(BuildContext context) {
    final lumbinihotels = Provider.of<List<Hotellumbini>>(context) ?? [];

    return ListView.builder(
      itemCount: lumbinihotels.length,
      itemBuilder: (context, index) {
        return LumbinihotelTile1(lumbinihotel: lumbinihotels[index]);
      },
    );
  }
}

//end

//start
class Janakpurhotellist extends StatefulWidget {
  @override
  _JanakpurhotellistState createState() => _JanakpurhotellistState();
}

class _JanakpurhotellistState extends State<Janakpurhotellist> {
  @override
  Widget build(BuildContext context) {
    final janakpurhotels = Provider.of<List<Hoteljanakpur>>(context) ?? [];

    return ListView.builder(
      itemCount: janakpurhotels.length,
      itemBuilder: (context, index) {
        return JanakpurhotelTile(janakpurhotel: janakpurhotels[index]);
      },
    );
  }
}

//end

//start
class Janakpurhotellist1 extends StatefulWidget {
  @override
  _Janakpurhotellist1State createState() => _Janakpurhotellist1State();
}

class _Janakpurhotellist1State extends State<Janakpurhotellist1> {
  @override
  Widget build(BuildContext context) {
    final janakpurhotels = Provider.of<List<Hoteljanakpur>>(context) ?? [];

    return ListView.builder(
      itemCount: janakpurhotels.length,
      itemBuilder: (context, index) {
        return JanakpurhotelTile1(janakpurhotel: janakpurhotels[index]);
      },
    );
  }
}

//end

//start
class Othershotellist extends StatefulWidget {
  @override
  _OthershotellistState createState() => _OthershotellistState();
}

class _OthershotellistState extends State<Othershotellist> {
  @override
  Widget build(BuildContext context) {
    final othershotels = Provider.of<List<Hotelothers>>(context) ?? [];

    return ListView.builder(
      itemCount: othershotels.length,
      itemBuilder: (context, index) {
        return OthershotelTile(othershotel: othershotels[index]);
      },
    );
  }
}
//end

//start
class Othershotellist1 extends StatefulWidget {
  @override
  _Othershotellist1State createState() => _Othershotellist1State();
}

class _Othershotellist1State extends State<Othershotellist1> {
  @override
  Widget build(BuildContext context) {
    final othershotels = Provider.of<List<Hotelothers>>(context) ?? [];

    return ListView.builder(
      itemCount: othershotels.length,
      itemBuilder: (context, index) {
        return OthershotelTile1(othershotel: othershotels[index]);
      },
    );
  }
}
//end

class Kathmandulist extends StatefulWidget {
  @override
  _KathmandulistState createState() => _KathmandulistState();
}

class _KathmandulistState extends State<Kathmandulist> {
  @override
  Widget build(BuildContext context) {
    final kathmandus = Provider.of<List<Kathmandu>>(context) ?? [];

    return ListView.builder(
      itemCount: kathmandus.length,
      itemBuilder: (context, index) {
        return KathmanduTile(kathmandu: kathmandus[index]);
      },
    );
  }
}

//pokhara

class Pokharalist extends StatefulWidget {
  @override
  _PokharalistState createState() => _PokharalistState();
}

class _PokharalistState extends State<Pokharalist> {
  @override
  Widget build(BuildContext context) {
    final pokharas = Provider.of<List<Pokhara>>(context) ?? [];

    return ListView.builder(
      itemCount: pokharas.length,
      itemBuilder: (context, index) {
        return PokharaTile(pokhara: pokharas[index]);
      },
    );
  }
}
//end here

//adventure

class Adventurelist extends StatefulWidget {
  @override
  _AdventurelistState createState() => _AdventurelistState();
}

class _AdventurelistState extends State<Adventurelist> {
  @override
  Widget build(BuildContext context) {
    final adventures = Provider.of<List<Adventure>>(context) ?? [];

    return ListView.builder(
      itemCount: adventures.length,
      itemBuilder: (context, index) {
        return AdventureTile(adventure: adventures[index]);
      },
    );
  }
}

//pokhara

class Lalitpurlist extends StatefulWidget {
  @override
  _LalitpurlistState createState() => _LalitpurlistState();
}

class _LalitpurlistState extends State<Lalitpurlist> {
  @override
  Widget build(BuildContext context) {
    final lalitpurs = Provider.of<List<Lalitpur>>(context) ?? [];

    return ListView.builder(
      itemCount: lalitpurs.length,
      itemBuilder: (context, index) {
        return LalitpurTile(lalitpur: lalitpurs[index]);
      },
    );
  }
}
//end here

//pokhara

class Janakpurlist extends StatefulWidget {
  @override
  _JanakpurlistState createState() => _JanakpurlistState();
}

class _JanakpurlistState extends State<Janakpurlist> {
  @override
  Widget build(BuildContext context) {
    final janakpurs = Provider.of<List<Janakpur>>(context) ?? [];

    return ListView.builder(
      itemCount: janakpurs.length,
      itemBuilder: (context, index) {
        return JanakpurTile(janakpur: janakpurs[index]);
      },
    );
  }
}
//end here
//pokhara

class Lumbinilist extends StatefulWidget {
  @override
  _LumbinilistState createState() => _LumbinilistState();
}

class _LumbinilistState extends State<Lumbinilist> {
  @override
  Widget build(BuildContext context) {
    final lumbinis = Provider.of<List<Lumbini>>(context) ?? [];

    return ListView.builder(
      itemCount: lumbinis.length,
      itemBuilder: (context, index) {
        return LumbiniTile(lumbini: lumbinis[index]);
      },
    );
  }
}
//end here
//pokhara

class Solukhumbhulist extends StatefulWidget {
  @override
  _SolukhumbhulistState createState() => _SolukhumbhulistState();
}

class _SolukhumbhulistState extends State<Solukhumbhulist> {
  @override
  Widget build(BuildContext context) {
    final solukhumbhus = Provider.of<List<Solukhumbhu>>(context) ?? [];

    return ListView.builder(
      itemCount: solukhumbhus.length,
      itemBuilder: (context, index) {
        return SolukhumbhuTile(solukhumbhu: solukhumbhus[index]);
      },
    );
  }
}
//end here
