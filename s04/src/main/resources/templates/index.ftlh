<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
		<title>Eingabeseite!</title>
	</head>
	<body>
		<form action="/greetings" method="POST">
			Geben Sie bitte Ihre Daten ein:
			<p />
			Vorname : <input type="text" name="firstName" /><br />
			Nachname: <input type="text" name="lastName" /><br />
			<p>
				<select name="land" size="1">
					<option>Deutschland</option>
					<option>Frankreich</option>
					<option>Bayern</option>
					<option>Niederlande</option>
					<option>Belgien</option>
				</select>
			</p>
			<p>
				<select name="top5" size="5" multiple>
					<option>Heino</option>
					<option>Michael Jackson</option>
					<option>Tom Waits</option>
					<option>Helene Fischer</option>
					<option>SSIO</option>
				</select>
			</p>
			<p>
				<select name="Pizza" size="5">
					<option value="P101">Pizza Napoli</option>
					<option value="P102">Pizza Funghi</option>
					<option value="P103">Pizza Mare</option>
					<option value="P104">Pizza Tonno</option>
					<option value="P105">Pizza Mexicana</option>
					<option value="P106">Pizza Regina</option>
					<option value="P107">Pizza de la Casa</option>
					<option value="P108">Pizza Calzone</option>
					<option value="P109">Pizza con tutti</option>
				</select>
			</p>

			<p>Geben Sie Ihre Zahlungsweise an:</p>
			<p>
				<input type="radio" name="Zahlmethode" value="Mastercard" />
				Mastercard<br />
				<input type="radio" name="Zahlmethode" value="Visa" /> Visa<br />
				<input type="radio" name="Zahlmethode" value="AmericanExpress" /> American Express
			</p>
			<p>Kreuzen Sie die gew&uuml;nschten Zutaten an:</p>
			<p>
				<input type="checkbox" name="zutat" value="salami" /> Salami<br />
				<input type="checkbox" name="zutat" value="pilze" /> Pilze<br />
				<input type="checkbox" name="zutat" value="sardellen" />
				Sardellen
			</p>
			<input type="submit" value="Fertig" />
		</form>
	</body>
</html>
