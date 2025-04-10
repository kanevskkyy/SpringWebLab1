@param String message
@param boolean hasPremium
@param java.util.List<String> userMusic
@param boolean defaultParameter = false
@param com.example.demo.Page page

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${page.title()}</title>
</head>
<body>
    <h1>Моє перше повідомлення: ${message}</h1>

    @if(hasPremium)
        <p>Ви маєте преміум підписку</p>
    @else
        <p>Ох, ніііі, ви не маєте преміум підписки 😒</p>
    @endif


    <h2>Ваші пісні: </h2>
    <ul>
        @for(String music: userMusic)
            <li>${music}</li>
        @endfor
    </ul>
    !{var musicAmount = userMusic.size();}
    <p>Ви маєте : ${musicAmount} вибраних пісень 😉</p>

    <%-- Це мій перший коментар у Gradle --%>

    <h1>Передаємо іменовані параметри у шаблон!</h1>
    @template.namedParametrs(parameter="dok")

    @if(defaultParameter)
        <p>Отже значення default parameter -> true</p>
    @else
        <p>Отже значення default parameter -> false</p>
    @endif

    @template.varags(counter = 0, "перший елемент", "другий елемент", "третій елемент", "четвертий елемент")
    @template.footer()
</body>
</html>