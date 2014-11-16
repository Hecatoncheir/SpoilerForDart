part of spoiler;

// Проверка уже имеющихся стилей

class SpoilerStyle {
  final style = new _Style();

  SpoilerStyle(){
    HeadElement Head = querySelector('head');
    List hasStyle = Head.querySelectorAll('link[href="packages/spoiler/spoiler.css"]');
    if(hasStyle.length < 1){
      Head.append(style.link);
    }
  }
}

// Создание ссылки на стиль библиотеки
class _Style{
  Element link;
  _Style() {
    this.link = new Element.tag('link');
    link..type = 'text/css'
        ..rel = 'stylesheet'
        ..href = 'packages/spoiler/spoiler.css';
  }
}