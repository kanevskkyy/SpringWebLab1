@param Integer counter
@param String ... varargs

<h1>Зараз шаблон з Varargs</h1>
@for(var element: varargs)
    <p>${counter++} елемент нашого varargs: ${element}</p>
@endfor