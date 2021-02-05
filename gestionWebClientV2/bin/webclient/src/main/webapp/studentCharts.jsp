<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>StudentCharts</title>
		<script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"></script>
	</head>
<body>
	<div id="canvas-holder" style="width:40%">
		<canvas id="chart-area"></canvas>
	</div>	
	
	<script>
		var config = {
			type: 'pie',
			data: {
				datasets: [{
					data: [
						'4',
						'2',
						'6',
					],
					backgroundColor: [
						'green',
						'orange',
						'red',
					],
					label: 'Dataset 1'
				}],
				labels: [
					'Bons',
					'Moyens',
					'Mauvais',
				]
			},
			options: {
				responsive: true
			}
		};

		window.onload = function() {
			var ctx = document.getElementById('chart-area').getContext('2d');
			window.myPie = new Chart(ctx, config);
		};
	</script>
</body>
</html>