library spoiler;

import 'dart:html';
part 'package:spoiler/classes.dart';

class CoolSpoilerTag{
	CoolSpoilerTag(){
		new SpoilerStyle();
		document.registerElement('cool-spoiler', CoolSpoiler, extendsTag: 'div');
	}
}

//Create new tag
class CoolSpoiler extends DivElement {
	Element tag = new DivElement();

	factory CoolSpoiler(){
		return tag;
	}

	CoolSpoiler.created() : super.created(){
		tag.setAttribute('name','Open/Close');
	}
}