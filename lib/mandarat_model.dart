class MandaratModel {
  final String text;

  MandaratModel(this.text);
}

class Mandarat {
  late final int id;
  late final String keyword;
  late List<Mandarat> subList;

  Mandarat(this.id, this.keyword);

  static Mandarat getDummy() {
    Mandarat mandarat = Mandarat(1, "만다라트 앱 제작");
    mandarat.subList = [
      Mandarat(1, '플러터 공부하기'),
      Mandarat(2, '도메인 구매'),
      Mandarat(3, '파이어베이스'),
      Mandarat(4, '컨플루언스, 지라'),
      Mandarat(5, 'git 공부'),
      Mandarat(6, '로그인연동'),
      Mandarat(7, '애드몹연동'),
      Mandarat(8, '디자인공부'),
    ];
    return mandarat;
  }

  List<Mandarat> getList() {
    List<Mandarat> list = [
      ...subList.sublist(0, 4),
      Mandarat(id, keyword),
      ...subList.sublist(4, 8),
    ];
    return list;
  }
}
