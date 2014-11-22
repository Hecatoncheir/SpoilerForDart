library spoiler;

import 'dart:html';
part 'package:spoiler/classes.dart';

class CoolSpoilerTag{
	CoolSpoilerTag(){
		new SpoilerStyle();
		RegisterTags();
	}
}

//Create new tag
class CoolSpoilerTag extends DivElement {
	Element tag = new DivElement();

	factory CoolSpoilerTag(){
		return tag;
	}

	CoolSpoiler.created() : super.created(){
		tag.setAttribute('name','Open/Close');
	}
}

//Register new HTML tags in DOM
Function RegisterTags(){
	document.registerElement('cool-spoiler', CoolSpoilerTag, extendsTag: 'div');
	document.registerElement('spoiler-name', CoolSpoilerTag, extendsTag: 'div');
}