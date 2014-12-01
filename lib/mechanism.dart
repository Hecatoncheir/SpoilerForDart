part of spoiler;

//Получение всех нужных тегов из документа
Function MakeSpoilerMechanism(){
  List spoilersInDom = querySelectorAll('cool-spoiler');
  insertSpoilerNameInDocument(spoilersInDom);
  addingEventHendler(spoilersInDom);
}

//Добавление имен из тегов в разметку документа
Function insertSpoilerNameInDocument(List Spoilers){

  Spoilers.forEach((spoiler){
    String nameAttribute = spoiler.getAttribute('name');

    if(nameAttribute != null){
      spoiler.appendHtml('<spoiler-name>$nameAttribute</spoiler-name>');
    }

  });

}

//Добавление обработки события нажатия на заголовки
Function addingEventHendler(List Spoilers){
  Spoilers.forEach((spoiler){
    spoiler.onClick.listen((event){
      String typeAttribute = event.target.parent.getAttribute('type');

    });
  });
}