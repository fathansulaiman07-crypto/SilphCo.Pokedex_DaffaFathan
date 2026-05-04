import 'package:flutter/material.dart';

void main() {
  runApp(const SilphCoApp());
}

class SilphCoApp extends StatelessWidget {
  const SilphCoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Silph Co. Pokedex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // Pakai warna Crimson Red biar lebih premium
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD32F2F),
          primary: const Color(0xFFD32F2F),
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFD32F2F),
          foregroundColor: Colors.white,
          elevation: 4,
        ),
      ),
      home: const PokemonListScreen(),
    );
  }
}

class Pokemon {
  final String name;
  final String type;
  final String description;
  final String image;

  Pokemon({
    required this.name,
    required this.type,
    required this.description,
    required this.image,
  });
}

class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({super.key});

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  final List<Pokemon> allPokemon = [
    Pokemon(
      name: 'Bulbasaur',
      type: 'Grass / Poison',
      description: 'Stats: HP: 45 | Atk: 49 | Def: 49 | Sp. Atk: 65 | Sp. Def: 65 | Speed: 45\nAbility: Overgrow\nWeakness: Fire, Ice, Flying, Psychic\n\nBulbasaur adalah Pokémon yang mengandalkan keseimbangan antara offense dan defense. Tanaman di punggungnya menyimpan energi matahari untuk memperkuat serangan.',
      image: 'assets/bulbasaur.png',
    ),
    Pokemon(
      name: 'Charizard',
      type: 'Fire / Flying',
      description: 'Stats: HP: 78 | Atk: 84 | Def: 78 | Sp. Atk: 109 | Sp. Def: 85 | Speed: 100\nAbility: Blaze\nWeakness: Rock (x4), Water, Electric\n\nCharizard adalah attacker cepat dengan damage tinggi, terutama di Special Attack. Sangat berbahaya tapi punya kelemahan besar terhadap Rock-type.',
      image: 'assets/charizard.png',
    ),
    Pokemon(
      name: 'Blastoise',
      type: 'Water',
      description: 'Stats: HP: 79 | Atk: 83 | Def: 100 | Sp. Atk: 85 | Sp. Def: 105 | Speed: 78\nAbility: Torrent\nWeakness: Grass, Electric\n\nBlastoise memiliki meriam air di tempurungnya yang dapat menembakkan peluru air dengan akurasi tinggi. Tekanan airnya cukup kuat untuk menembus baja tebal. Ia adalah tank utama yang sangat sulit ditembus.',
      image: 'assets/blastoise.png',
    ),
    Pokemon(
      name: 'Pikachu',
      type: 'Electric',
      description: 'Stats: HP: 35 | Atk: 55 | Def: 40 | Sp. Atk: 50 | Sp. Def: 50 | Speed: 90\nAbility: Static\nWeakness: Ground\n\nIkon dunia Pokémon. Pikachu menyimpan listrik di kantung pipinya yang merah. Jika merasa terancam, ia akan melepaskan sengatan listrik dari seluruh tubuhnya. Sangat lincah dan cepat dalam menyerang.',
      image: 'assets/pikachu.png',
    ),
    Pokemon(
      name: 'Gengar',
      type: 'Ghost / Poison',
      description: 'Stats: HP: 60 | Atk: 65 | Def: 60 | Sp. Atk: 130 | Sp. Def: 75 | Speed: 110\nAbility: Cursed Body\nWeakness: Ghost, Dark, Psychic\n\nGengar bersembunyi di bayangan manusia pada malam hari untuk mencuri panas tubuh mereka. Ia adalah petarung tipe Special yang sangat mematikan dengan kecepatan tinggi namun memiliki pertahanan fisik yang rendah.',
      image: 'assets/gengar.png',
    ),
    Pokemon(
      name: 'Dragonite',
      type: 'Dragon / Flying',
      description: 'Stats: HP: 91 | Atk: 134 | Def: 95 | Sp. Atk: 100 | Sp. Def: 100 | Speed: 80\nAbility: Inner Focus\nWeakness: Ice (x4), Rock, Dragon, Fairy\n\nPokémon legendaris yang baik hati. Dragonite dikabarkan dapat terbang mengelilingi dunia hanya dalam waktu 16 jam. Meskipun terlihat tenang, kekuatannya saat bertarung setara dengan dewa laut.',
      image: 'assets/dragonite.png',
    ),
    Pokemon(
      name: 'Snorlax',
      type: 'Normal',
      description: 'Stats: HP: 160 | Atk: 110 | Def: 65 | Sp. Atk: 65 | Sp. Def: 110 | Speed: 30\nAbility: Thick Fat\nWeakness: Fighting\n\nSnorlax menghabiskan waktunya hanya untuk makan dan tidur. Perutnya sangat kuat sehingga bisa mencerna makanan yang sudah berjamur atau beracun sekalipun. HP-nya yang luar biasa besar menjadikannya tembok pertahanan tim.',
      image: 'assets/snorlax.png',
    ),
    Pokemon(
      name: 'Eevee',
      type: 'Normal',
      description: 'Stats: HP: 55 | Atk: 55 | Def: 50 | Sp. Atk: 45 | Sp. Def: 65 | Speed: 55\nAbility: Adaptability\nWeakness: Fighting\n\nEevee memiliki kode genetik yang tidak stabil, memungkinkannya berevolusi menjadi berbagai jenis Pokémon tergantung lingkungannya. Pokémon yang sangat populer karena potensi adaptasinya yang tak terbatas.',
      image: 'assets/eevee.png',
    ),
    Pokemon(
      name: 'Vaporeon',
      type: 'Water',
      description: 'Stats: HP: 130 | Atk: 65 | Def: 60 | Sp. Atk: 110 | Sp. Def: 95 | Speed: 65\nAbility: Water Absorb\nWeakness: Grass, Electric\n\nStruktur sel Vaporeon mirip dengan molekul air, memungkinkannya mencair dan menyatu dengan air untuk mengecoh musuh. Ia memiliki daya tahan spesial yang sangat tinggi.',
      image: 'assets/vaporeon.png',
    ),
    Pokemon(
      name: 'Jolteon',
      type: 'Electric',
      description: 'Stats: HP: 65 | Atk: 65 | Def: 60 | Sp. Atk: 110 | Sp. Def: 95 | Speed: 130\nAbility: Volt Absorb\nWeakness: Ground\n\nSel-selnya menghasilkan listrik tingkat tinggi yang diperkuat oleh bulunya yang tajam seperti jarum. Jolteon adalah salah satu Pokémon tercepat yang mampu menyerang dalam sekejap mata.',
      image: 'assets/jolteon.png',
    ),
    Pokemon(
      name: 'Flareon',
      type: 'Fire',
      description: 'Stats: HP: 65 | Atk: 130 | Def: 60 | Sp. Atk: 95 | Sp. Def: 110 | Speed: 65\nAbility: Flash Fire\nWeakness: Water, Ground, Rock\n\nFlareon memiliki kantung api di tubuhnya yang dapat memanaskan suhu napasnya hingga 1.700 derajat Celsius. Memiliki kekuatan fisik yang sangat besar untuk ukuran Pokémon mungil.',
      image: 'assets/flareon.png',
    ),
    Pokemon(
      name: 'Lucario',
      type: 'Fighting / Steel',
      description: 'Stats: HP: 70 | Atk: 110 | Def: 70 | Sp. Atk: 115 | Sp. Def: 70 | Speed: 90\nAbility: Inner Focus\nWeakness: Fire, Fighting, Ground\n\nLucario dapat membaca Aura dari musuhnya untuk memprediksi gerakan mereka. Dengan kombinasi tipe Steel, ia memiliki banyak resistensi terhadap serangan fisik dan spesial.',
      image: 'assets/lucario.png',
    ),
    Pokemon(
      name: 'Greninja',
      type: 'Water / Dark',
      description: 'Stats: HP: 72 | Atk: 95 | Def: 67 | Sp. Atk: 103 | Sp. Def: 71 | Speed: 122\nAbility: Torrent\nWeakness: Grass, Electric, Fighting, Bug, Fairy\n\nNinja Pokémon yang bergerak sangat lincah. Ia membuat shuriken dari kompresi air yang cukup tajam untuk membelah logam. Pokémon favorit bagi mereka yang mengandalkan kecepatan.',
      image: 'assets/greninja.png',
    ),
    Pokemon(
      name: 'Machamp',
      type: 'Fighting',
      description: 'Stats: HP: 90 | Atk: 130 | Def: 80 | Sp. Atk: 65 | Sp. Def: 85 | Speed: 55\nAbility: No Guard\nWeakness: Flying, Psychic, Fairy\n\nDengan empat lengan yang sangat berotot, Machamp dapat meluncurkan ribuan pukulan dalam sekejap. Satu lengannya saja cukup untuk memindahkan gunung.',
      image: 'assets/machamp.png',
    ),
    Pokemon(
      name: 'Alakazam',
      type: 'Psychic',
      description: 'Stats: HP: 55 | Atk: 50 | Def: 45 | Sp. Atk: 135 | Sp. Def: 95 | Speed: 120\nAbility: Synchronize\nWeakness: Bug, Ghost, Dark\n\nAlakazam memiliki IQ di atas 5.000. Sel otaknya terus tumbuh seumur hidup, membuatnya menjadi salah satu Pokémon tercerdas dan pengguna kekuatan psikis terkuat di dunia.',
      image: 'assets/alakazam.png',
    ),
    Pokemon(
      name: 'Gyarados',
      type: 'Water / Flying',
      description: 'Stats: HP: 95 | Atk: 125 | Def: 79 | Sp. Atk: 60 | Sp. Def: 100 | Speed: 81\nAbility: Intimidate\nWeakness: Electric (x4), Rock\n\nDikenal sebagai Pokémon yang sangat agresif. Begitu Gyarados mulai mengamuk, ia tidak akan berhenti sampai semua di sekitarnya hancur total. Sangat berbahaya di lautan.',
      image: 'assets/gyarados.png',
    ),
    Pokemon(
      name: 'Tyranitar',
      type: 'Rock / Dark',
      description: 'Stats: HP: 100 | Atk: 134 | Def: 110 | Sp. Atk: 95 | Sp. Def: 100 | Speed: 61\nAbility: Sand Stream\nWeakness: Fighting (x4), Water, Grass, Steel\n\nTyranitar memiliki tubuh yang sekeras baja dan kekuatan yang bisa meruntuhkan gunung. Kehadirannya di medan tempur selalu memicu badai pasir yang hebat.',
      image: 'assets/tyranitar.png',
    ),
  ];

  String selectedCategory = 'All';
  final List<String> categories = ['All', 'Grass', 'Fire', 'Water', 'Electric', 'Poison', 'Normal', 'Psychic', 'Fighting', 'Rock', 'Ghost', 'Dragon'];
  
  List<Pokemon> filteredPokemon = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredPokemon = allPokemon;
  }

  void _applyFilter() {
    String keyword = _searchController.text.toLowerCase();
    setState(() {
      filteredPokemon = allPokemon.where((pokemon) {
        final matchesName = pokemon.name.toLowerCase().contains(keyword);
        final matchesCategory = selectedCategory == 'All' || pokemon.type.contains(selectedCategory);
        return matchesName && matchesCategory;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Silph Co. Pokedex', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // SEARCH BAR YANG LEBIH CAKEP
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) => _applyFilter(),
              decoration: InputDecoration(
                hintText: 'Cari Nama Pokemon...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
          ),

          
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ChoiceChip(
                    label: Text(categories[index]),
                    selected: selectedCategory == categories[index],
                    selectedColor: const Color(0xFFD32F2F),
                    labelStyle: TextStyle(
                      color: selectedCategory == categories[index] ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    onSelected: (bool selected) {
                      setState(() {
                        selectedCategory = categories[index];
                        _applyFilter();
                      });
                    },
                  ),
                );
              },
            ),
          ),
          
          const SizedBox(height: 10),

        
          Expanded(
            child: filteredPokemon.isNotEmpty
                ? ListView.builder(
                    itemCount: filteredPokemon.length,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    itemBuilder: (context, index) {
                      final p = filteredPokemon[index];
                      return Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(10),
                          leading: Hero(
                            tag: p.name, // Animasi terbang
                            child: Image.asset(p.image, width: 60, height: 60, 
                              errorBuilder: (c, e, s) => const Icon(Icons.catching_pokemon, size: 40)),
                          ),
                          title: Text(p.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                          subtitle: Text('Type: ${p.type}', style: TextStyle(color: Colors.grey[600])),
                          trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFFD32F2F)),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailScreen(pokemon: p)),
                            );
                          },
                        ),
                      );
                    },
                  )
                : const Center(child: Text('Pokemon tidak ditemukan', style: TextStyle(fontSize: 16))),
          ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Pokemon pokemon;
  const DetailScreen({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFD32F2F),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Hero(
                    tag: pokemon.name,
                    child: Image.asset(pokemon.image, height: 220, 
                      errorBuilder: (c, e, s) => const Icon(Icons.catching_pokemon, size: 150, color: Colors.white)),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            
            // CONTENT AREA
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(pokemon.name, style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(pokemon.type, style: const TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text('Deskripsi & Statistik', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFFD32F2F))),
                  const Divider(color: Color(0xFFD32F2F), thickness: 1),
                  const SizedBox(height: 10),
                  Text(
                    pokemon.description,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 17, height: 1.6, color: Colors.black87),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}