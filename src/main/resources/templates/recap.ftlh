[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Rekapitulace registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <main class="container mt-5">
    <h1 class="mb-4">Rekapitulace registrace na letní dětský tábor</h1>
    <div class="card">
        <div class="card-body">
            <ul class="list-group">
                <li class="list-group-item"><strong>Jméno:</strong> ${form.jmeno}</li>
                <li class="list-group-item"><strong>Příjmení:</strong> ${form.prijmeni}</li>
                <li class="list-group-item"><strong>Pohlaví:</strong> ${form.pohlavi.getDisplayName()}</li>
                <li class="list-group-item"><strong>E-mail:</strong> ${form.email}</li>
                <li class="list-group-item"><strong>Telefon:</strong> ${form.telefon}</li>
                <li class="list-group-item"><strong>Turnus:</strong> ${form.turnus}</li>
                <li class="list-group-item"><strong>Datum narození:</strong> ${form.datumNarozeni}</li>
            </ul>
    </main>
</body>
</html>
