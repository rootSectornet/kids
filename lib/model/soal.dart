class Soal{
  String soal;
  List<Jawaban> choice;
  String jawaban;
  int indexJawaban;
  String img;
  String textSoal;
  Soal({this.soal,this.choice,this.jawaban,this.indexJawaban,this.img,this.textSoal});
}

class Jawaban{
  String label;
  String image;
  String id;
  Jawaban({this.label,this.image,this.id});
}

