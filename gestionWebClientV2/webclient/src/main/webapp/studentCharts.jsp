
<!-- header -->
<%@include file="header.jsp"%>
<!-- Navigation-->
<%@include file="menuhaut.jsp"%>

<div class="container" style="margin-top: 200px;">
	<div id="canvas-holder" style="width:40%">
		<canvas id="chart-area"></canvas>
	</div>	
</div>

<script>
	var config = {
		type: 'pie',
		data: {
			datasets: [{
				data: [
					<%= session.getAttribute("bon") %>,
					<%= session.getAttribute("moyen") %>,
					<%= session.getAttribute("mauvais") %>,
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

<!-- Footer -->
<%@include file="footer.jsp"%>

