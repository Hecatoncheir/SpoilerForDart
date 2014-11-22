library spoiler;

import 'dart:html';
part 'package:spoiler/classes.dart';

class CoolSpoilerTag{
	CoolSpoilerTag(){
		new SpoilerStyle();
		RegisterTags();
	}
}

//For new spoiler tag
class SpoilerTag extends DivElement {
	Element tag = new DivElement();

	String name = 'Open/Close';
	String type = 'close';

	factory SpoilerTag(){
		return tag;
	}

	SpoilerTag.created() : super.created(){
		tag.setAttribute('name','$name');
		tag.setAttribute('type','$type');
	}
}

//For new spoiler name tag
class SpoilerNameTag extends SpoilerTag {

	factory SpoilerNameTag(){
		return new DivElement();
	}

	SpoilerNameTag.created() : super.created(){}
}

//Register new HTML tags in DOM
Function RegisterTags(){
	document.registerElement('cool-spoiler', SpoilerTag, extendsTag: 'div');
	document.registerElement('spoiler-name', SpoilerNameTag, extendsTag: 'div');
}