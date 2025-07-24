
import 'package:MyTask/core/utils/json_utils.dart';

class CharactersResponse {
  final List<Character> characters;
  final int currentPage;
  final int pageSize;
  final int total;

  CharactersResponse({
    required this.characters,
    required this.currentPage,
    required this.pageSize,
    required this.total,
  });

  factory CharactersResponse.fromJson(Map<String, dynamic> json) {
    return CharactersResponse(
      characters: (json['characters'] as List)
          .map((character) => Character.fromJson(character))
          .toList(),
      currentPage: json['currentPage'],
      pageSize: json['pageSize'],
      total: json['total'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'characters': characters.map((character) => character.toJson()).toList(),
      'currentPage': currentPage,
      'pageSize': pageSize,
      'total': total,
    };
  }
}

class Character {
  final int id;
  final String? name;
  final List<String>? images;
  final Debut? debut;
  final Family? family;
  final List<String>? jutsu;
  final List<String>? natureType;
  final Personal? personal;
  final Rank? rank;
  final List<String>? tools;
  final VoiceActors? voiceActors;
  final List<String>? uniqueTraits;
  final List<String>? kekkeiGenkai;

  Character({
    required this.id,
    this.name,
    this.images,
    this.debut,
    this.family,
    this.jutsu,
    this.natureType,
    this.personal,
    this.rank,
     this.tools,
     this.voiceActors,
    this.uniqueTraits,
    this.kekkeiGenkai,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      images: json['images'] != null ? List<String>.from(json['images']) : null,
      debut: json['debut'] != null ? Debut.fromJson(json['debut']) : null,
      family: json['family'] != null ? Family.fromJson(json['family']) : null,
      jutsu: json['jutsu'] != null ? List<String>.from(json['jutsu']) : null,
      natureType: json['natureType'] != null ? List<String>.from(json['natureType']) : null,
      personal: json['personal'] != null ? Personal.fromJson(json['personal']) : null,
      rank: json['rank'] != null ? Rank.fromJson(json['rank']) : null,
      tools: json['tools'] != null ? List<String>.from(json['tools']) : null,
      voiceActors: json['voiceActors'] != null ? VoiceActors.fromJson(json['voiceActors']) : null,
      uniqueTraits: json['uniqueTraits'] != null
          ? List<String>.from(json['uniqueTraits'])
          : null,
      kekkeiGenkai: json['kekkeiGenkai'] != null
          ? List<String>.from(json['kekkeiGenkai'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'images': images,
      'debut': debut?.toJson(),
      'family': family?.toJson(),
      'jutsu': jutsu,
      'natureType': natureType,
      'personal': personal?.toJson(),
      'rank': rank?.toJson(),
      'tools': tools,
      'voiceActors': voiceActors?.toJson(),
      'uniqueTraits': uniqueTraits,
      'kekkeiGenkai': kekkeiGenkai,
    };
  }
}

class Debut {
  final String? manga;
  final String? anime;
  final String? novel;
  final String? movie;
  final String? game;
  final String? ova;
  final String? appearsIn;

  Debut({
     this.manga,
     this.anime,
     this.novel,
     this.movie,
     this.game,
     this.ova,
     this.appearsIn,
  });

  factory Debut.fromJson(Map<String, dynamic> json) {
    return Debut(
      manga: json['manga'],
      anime: json['anime'],
      novel: json['novel'],
      movie: json['movie'],
      game: json['game'],
      ova: json['ova'],
      appearsIn: json['appearsIn'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'manga': manga,
      'anime': anime,
      'novel': novel,
      'movie': movie,
      'game': game,
      'ova': ova,
      'appearsIn': appearsIn,
    };
  }
}

class Family {
  final String? father;
  final String? mother;
  final String? son;
  final String? daughter;
  final String? wife;
  final String? adoptiveSon;
  final String? godfather;
  final String? brother;
  final String? adoptiveMother;
  final String? geneticTemplateParent;
  final String? cloneBrother;
  final String? pet;
  final String? grandfather;
  final String? grandmother;
  final String? uncle;
  final String? aunt;
  final String? cousin;
  final String? nephew;
  final String? lover;
  final String? greatGrandfather;
  final String? greatGrandmother;
  final String? granduncle;
  final String? firstCousinOnceRemoved;
  final String? host;
  final String? creator;
  final String? adoptiveBrother;

  Family({
    this.father,
    this.mother,
    this.son,
    this.daughter,
    this.wife,
    this.adoptiveSon,
    this.godfather,
    this.brother,
    this.adoptiveMother,
    this.geneticTemplateParent,
    this.cloneBrother,
    this.pet,
    this.grandfather,
    this.grandmother,
    this.uncle,
    this.aunt,
    this.cousin,
    this.nephew,
    this.lover,
    this.greatGrandfather,
    this.greatGrandmother,
    this.granduncle,
    this.firstCousinOnceRemoved,
    this.host,
    this.creator,
    this.adoptiveBrother,
  });

  factory Family.fromJson(Map<String, dynamic> json) {
    return Family(
      father: json['father'],
      mother: json['mother'],
      son: json['son'],
      daughter: json['daughter'],
      wife: json['wife'],
      adoptiveSon: json['adoptive son'],
      godfather: json['godfather'],
      brother: json['brother'],
      adoptiveMother: json['adoptive mother'],
      geneticTemplateParent: json['genetic template/parent'],
      cloneBrother: json['clone/brother'],
      pet: json['pet '],
      grandfather: json['grandfather'],
      grandmother: json['grandmother'],
      uncle: json['uncle'],
      aunt: json['aunt'],
      cousin: json['cousin'],
      nephew: json['nephew'],
      lover: json['lover'],
      greatGrandfather: json['great-grandfather'],
      greatGrandmother: json['great-grandmother'],
      granduncle: json['granduncle'],
      firstCousinOnceRemoved: json['first cousin once removed'],
      host: json['host'],
      creator: json['creator'],
      adoptiveBrother: json['adoptive brother'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'father': father,
      'mother': mother,
      'son': son,
      'daughter': daughter,
      'wife': wife,
      'adoptive son': adoptiveSon,
      'godfather': godfather,
      'brother': brother,
      'adoptive mother': adoptiveMother,
      'genetic template/parent': geneticTemplateParent,
      'clone/brother': cloneBrother,
      'pet ': pet,
      'grandfather': grandfather,
      'grandmother': grandmother,
      'uncle': uncle,
      'aunt': aunt,
      'cousin': cousin,
      'nephew': nephew,
      'lover': lover,
      'great-grandfather': greatGrandfather,
      'great-grandmother': greatGrandmother,
      'granduncle': granduncle,
      'first cousin once removed': firstCousinOnceRemoved,
      'host': host,
      'creator': creator,
      'adoptive brother': adoptiveBrother,
    };
  }
}

class Personal {
  final String? birthdate;
  final String? sex;
  final dynamic age; // Can be String or Map<String, String>
  final String? status;
  final dynamic height; // Can be String or Map<String, String>
  final dynamic weight; // Can be String or Map<String, String>
  final String? bloodType;
  final List<String>? kekkeiGenkai;
  final String? kekkeiMora;
  final List<String>? classification;
  final String? tailedBeast;
  final List<String>? occupation;
  final List<String>? affiliation;
  final List<String>? team;
  final String? clan;
  final List<String>? titles;
  final String? species;

  Personal({
    this.birthdate,
    this.sex,
    this.age,
    this.status,
    this.height,
    this.weight,
    this.bloodType,
    this.kekkeiGenkai,
    this.kekkeiMora,
    this.classification,
    this.tailedBeast,
    this.occupation,
    this.affiliation,
    this.team,
    this.clan,
    this.titles,
    this.species,
  });

  factory Personal.fromJson(Map<String, dynamic> json) {
    return Personal(
      birthdate: json['birthdate'],
      sex: json['sex'],
      age: json['age'],
      status: json['status'],
      height: json['height'],
      weight: json['weight'],
      bloodType: json['bloodType'],
      kekkeiGenkai: JsonUtils.parseStringOrList(json['kekkeiGenkai']),
      kekkeiMora: json['kekkeiMōra'],
      classification: json['classification'] != null
          ? json['classification'] is List
              ? List<String>.from(json['classification'])
              : json['classification'] is String
                  ? [json['classification']]
                  : null
          : null,
      tailedBeast: json['tailedBeast'],
      // occupation: json['occupation'] != null
      //     ? List<String>.from(json['occupation'])
      //     : null,
      affiliation: json['affiliation'] != null
          ? List<String>.from(json['affiliation'])
          : null,
      team: JsonUtils.parseStringOrList(json['team']),
      // clan: json['clan'],
      titles: json['titles'] != null ? List<String>.from(json['titles']) : null,
      species: json['species'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'birthdate': birthdate,
      'sex': sex,
      'age': age,
      'status': status,
      'height': height,
      'weight': weight,
      'bloodType': bloodType,
      'kekkeiGenkai': kekkeiGenkai,
      'kekkeiMōra': kekkeiMora,
      'classification': classification,
      'tailedBeast': tailedBeast,
      'occupation': occupation,
      'affiliation': affiliation,
      'team': team,
      'clan': clan,
      'titles': titles,
      'species': species,
    };
  }
}

class Rank {
  final NinjaRank ninjaRank;
  final String? ninjaRegistration;

  Rank({
    required this.ninjaRank,
    this.ninjaRegistration,
  });

  factory Rank.fromJson(Map<String, dynamic> json) {
    return Rank(
      ninjaRank: NinjaRank.fromJson(json['ninjaRank']),
      ninjaRegistration: json['ninjaRegistration'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ninjaRank': ninjaRank.toJson(),
      'ninjaRegistration': ninjaRegistration,
    };
  }
}

class NinjaRank {
  final String? partI;
  final String? partII;
  final String? blankPeriod;
  final String? gaiden;
  final String? academyGraduate;
  final String? chuninPromotion;

  NinjaRank({
    this.partI,
    this.partII,
    this.blankPeriod,
    this.gaiden,
    this.academyGraduate,
    this.chuninPromotion,
  });

  factory NinjaRank.fromJson(Map<String, dynamic> json) {
    return NinjaRank(
      partI: json['Part I'],
      partII: json['Part II'],
      blankPeriod: json['Blank Period'],
      gaiden: json['Gaiden'],
      academyGraduate: json['Academy Graduate'],
      chuninPromotion: json['Chunin Promotion'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Part I': partI,
      'Part II': partII,
      'Blank Period': blankPeriod,
      'Gaiden': gaiden,
      'Academy Graduate': academyGraduate,
      'Chunin Promotion': chuninPromotion,
    };
  }
}

class VoiceActors {
  final List<String>? japanese;
  final List<String>? english;

  VoiceActors({
    this.japanese,
    this.english,
  });

  factory VoiceActors.fromJson(Map<String, dynamic> json) {
    return VoiceActors(
      japanese: JsonUtils.parseStringOrList(json['japanese']),
      english: JsonUtils.parseStringOrList(json['english']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'japanese': japanese,
      'english': english,
    };
  }
}
