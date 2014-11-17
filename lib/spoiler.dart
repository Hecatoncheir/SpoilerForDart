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
	factory CoolSpoiler(){
		return new DivElement();
	}

	CoolSpoiler.created() : super.created(){}
}