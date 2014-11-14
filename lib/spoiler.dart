library spoiler;

import 'dart:html';

class SpoilerFor {

  SpoilerFor(String element){
  	List spElements = querySelectorAll('$element');
  	addStyleToDocument();
	}

}

// Проверка уже имеющихся стилей
addStyleToDocument(){
	HeadElement Head = querySelector('head');
	List hasStyle = Head.querySelectorAll('link[href="packages/spoiler/spoiler.css"]');
	if(hasStyle.length < 1){
		var style = createStyle();
		Head.append(style);
	}
}

// Создание ссылки на стиль библиотеки
createStyle(){
	Element style = new Element.tag('link');
  	      style..type = 'text/css'
               ..rel = 'stylesheet'
               ..href = 'packages/spoiler/spoiler.css';
	return style;
}