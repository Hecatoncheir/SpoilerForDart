part of spoiler;

// Проверка уже имеющихся стилей
class SpoilerStyle {
  static final style = new _Style();
  static final Head = querySelector('head');

  SpoilerStyle(){
    Head.append(style.link);
  }
}

// Создание ссылки на стиль библиотеки
class _Style {
  LinkElement link;

  _Style() {
    this.link = new Element.tag('link');
    link..type = 'text/css'
        ..rel = 'stylesheet'
        ..href = 'packages/spoiler/spoiler.css';
  }
}