import 'dart:collection';

class Antrean<T> {
  final Queue<T> _items = Queue<T>();

  void enqueue(T item) {
    _items.addLast(item);
  }

  T pop() {
    if (_items.isEmpty) {
      throw Exception('Antrean kosong, tidak ada data yang bisa di-pop.');
    }
    return _items.removeFirst();
  }

  T peek() {
    if (_items.isEmpty) {
      throw Exception('Antrean kosong.');
    }
    return _items.first;
  }

  bool get isEmpty => _items.isEmpty;
  int get length => _items.length;

  @override
  String toString() => 'Antrean($_items)';
}

void main() {
  final antreanBuku = Antrean<String>();

  antreanBuku.enqueue('Buku Dart Dasar');
  antreanBuku.enqueue('Buku Flutter UI');
  antreanBuku.enqueue('Buku Firebase API');

  print(antreanBuku);
  print(antreanBuku.peek());

  print(antreanBuku.pop());
  print(antreanBuku.pop());

  print(antreanBuku);

  try {
    antreanBuku.pop();
    antreanBuku.pop();
  } catch (e) {
    print('Terjadi eksepsi: $e');
  }
}
