#!/bin/bash

for i in {2..8}
do
  # create HTML file with filename "photo<i>.html"
  echo '<!DOCTYPE html>
<html>
<head>
	<title>Photo '"$i"'</title>
	<style>
		body {
			background-color: #FFFFFF;
			font-family: Arial, sans-serif;
			text-align: center;
			margin: 0;
			padding: 0;
		}
		.photo {
			width: 100%;
			max-width: 800px;
			margin: 20px auto;
		}
		.description {
			font-size: 18px;
			font-weight: bold;
			margin: 20px 0;
		}
		.back-button {
			display: block;
			position: absolute;
			top: 0;
			left: 0;
			margin: 20px;
			color: #1C1C1C;
			border: none;
			padding: 10px 20px;
			font-size: 16px;
			cursor: pointer;
			text-decoration: none;
		}
		.back-arrow {
			display: inline-block;
			vertical-align: middle;
			margin-right: 10px;
			font-size: 24px;
		}
		.back-button:hover {
			color: #1C1C1C;
			text-decoration: underline;
		}
	</style>
</head>
<body>
	<a href="../index.html" class="back-button"><span class="back-arrow">&lt;</span>BACK</a>
	
	<img src="files/photo'"$i"'.png" alt="Photo '"$i"'" class="photo">
	
	<div class="description">
		<p>ORT /// FUNKTION /// ZEIT </p>
	</div>
	
</body>
</html>' > photo"$i".html

done
