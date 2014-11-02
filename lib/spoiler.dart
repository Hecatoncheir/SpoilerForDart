library spoiler;

import 'dart:html';

class Spoiler {
	String Name;

  Spoiler(String element){
  	List spElements = querySelectorAll('$element');
  	spElements.forEach((Element el){
  		String atribute = el.getAttribute('name');
  		print('$atribute');
  	});
  }
}



makeContentsClosed(){}