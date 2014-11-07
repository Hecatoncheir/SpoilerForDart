library spoiler;

import 'dart:html';

class SpoilerFor {

  SpoilerFor(String element, {type:closed}){
  	List spElements = querySelectorAll('$element');
  	addStyleToDocument();
  	addSpoilerNameStyle(spElements);
	}

}

addSpoilerNameStyle(List spElements){
	spElements.forEach((element){
		
	});
}

// Проверка уже имеющихся стилей
addStyleToDocument(){

}

// Добавление стилей в документ
appendStyle(){
	Element style = new Element.tag('link');
	style.type = 'text/css';
	style.rel = 'stylesheet';
	style.href = 'packages/spoiler/spoiler.css';

  querySelector('head').append(style);
}


makeContentsClosed(){}