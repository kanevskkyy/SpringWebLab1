@param Integer counter
@param String ... varargs

<h1>Зараз шаблон з Varargs</h1>
@for(var element: varargs)
    <p>${counter++} element of varargs: ${element}</p>
@endfor