<!DOCTYPE html>
<html>

<head>
    <title>学习中心</title>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">

</head>
<body class="body-bgColor">

<link rel="import" href="../../widget/UserHome.report/lesson.tpl?__inline">


<script>
	$(function () {
		var ctx = document.getElementById("ringCanvas");
		var myDoughnutChart = new Chart(ctx, {
		    type: 'doughnut',
		        data: {
		             labels: [
		                "Red",
		                "Blue",
		                "Yellow"
		            ],
		            datasets: [
		                {
		                    data: [60, 20, 50],
		                    backgroundColor: [
		                        "#a1ffa1",
		                        "#ff5a5a",
		                        "#faff6d"
		                    ],
		                    hoverBackgroundColor: [
		                        "#a1ffa1",
		                        "#ff5a5a",
		                        "#faff6d"
		                    ]
		                }]
		        },
		        options: {
		            responsive: true,
		            legend: {
		                position: 'bottom',
		                display: false
		            },
		            title: {
		                display: false,
		                // text: 'Chart.js Doughnut Chart',
		            },
		            segmentStrokeWidth : 0,
		            animation: {
		                animateScale: true,
		                animateRotate: true
		            },
		            cutoutPercentage: 80
		        }
		});	
	})
</script>
</body>

</html>




