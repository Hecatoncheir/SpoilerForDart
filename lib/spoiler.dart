library spoiler;

import 'dart:html';
part 'package:spoiler/classes.dart';

class SpoilerTag{
	SpoilerTag(){
		new SpoilerStyle();
		document.registerElement('cool-spoiler', CoolSpoiler);
	}
}

class CoolSpoiler extends Element {
	factory CoolSpoiler(){
		return new Element.tag('cool-spoiler');
	}

	CoolSpoiler.created() : super.created(){}
}