[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <main>
        <h1>Registrace na letní dětský tábor</h1>
        <form action="/" method="post">
            <div class="form-group">
                <label for="jmeno">Jméno</label>
                [@spring.formInput path="form.jmeno" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
            <div class="form-group">
                <label for="prijmeni">Příjmení</label>
                [@spring.formInput path="form.prijmeni" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
            <div class="form-group">
                <label for="pohlavi">Pohlaví</label>
                <div>
                    <input id="pohlavi1" type="radio" name="pohlavi" value="DIVKA"/>
                    <label for="pohlavi1">Dívka</label>
                </div>
                <div>
                    <input id="pohlavi2" type="radio" name="pohlavi" value="CHLAPEC"/>
                    <label for="pohlavi2">Chlapec</label>
                </div>
                [@spring.bind "form.pohlavi"/]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            <div class="form-group">
                <label for="datumNarozeni">Datum narození</label>
                [@spring.formInput path="form.datumNarozeni" fieldType="date" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
                [#if form.datumNarozeni?? && form.vek < 9 || form.vek > 16]
                    <span>Věk musí být mezi 9 a 16 lety!</span>
                [/#if]
            </div>
            </div>
            <div class="form-group">
                <label for="email">E-mail</label>
                [@spring.formInput path="form.email" fieldType="email" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
            <div class="form-group">
                <label for="telefon">Telefon</label>
                [@spring.formInput path="form.telefon" fieldType="number" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
            <div class="form-group">
                <label for="turnus">Turnus</label>
                [@spring.formSingleSelect path="form.turnus" options={
                "": "",
                "1": "5. až 11. července",
                "2": "12. až 18. července",
                "3": "19. až 25. července"
                } /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </main>
</body>
</html>
