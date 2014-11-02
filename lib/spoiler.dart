library spoiler;

import 'dart:html';

class Spoiler {
	String Name;
  static Style = appendStyle();

  Spoiler(String element){
  	List spElements = querySelectorAll('$element');
  	spElements.forEach((Element el){
  		String atribute = el.getAttribute('name');

  		if(atribute !== null){

      }

  	});
  }
}

appendStyle(){
  // querySelector('body').append();
}



makeContentsClosed(){}