library spoiler;

import 'dart:html';
part 'package:spoiler/classes.dart';

class SpoilerTag{
	SpoilerTag(){
		new SpoilerStyle();
		document.registerElement('cool-spoiler', CoolSpoiler, extendsTag: 'div');
	}
}

class CoolSpoiler extends DivElement {
	Element tag = new DivElement();

	factory CoolSpoiler(){
		return tag;
	}

	CoolSpoiler.created() : super.created(){
		tag.setAttribute('name','Open/Close');
	}
}