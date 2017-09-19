//var ctx1 = document.getElementById("myChart1");
		var ctx2 = document.getElementById("myChart2");
		var ctx3 = document.getElementById("myChart3");
		
		var ctx4 = document.getElementById("myChart4");
		var ctx5 = document.getElementById("myChart5");
		var ctx6 = document.getElementById("myChart6");
		
		new Chart(document.getElementById("myChart1"),{"type":"line","data":{"labels":["Março","Abril","Maio","Junho","Julho"],"datasets":[{"label":"","data":[53,30,25,20,20],"fill":false,"borderColor":"rgb(75, 192, 192)","lineTension":0.1}]},"options":{}});
		
		new Chart(document.getElementById("myChart2"),{"type":"line","data":{"labels":["Domingo","Sábado","Segunda","Terça","Quarta","Quinta","Sexta"],"datasets":[{"label":"","data":[30,38,42,40,45,44,39],"fill":false,"borderColor":"rgb(75, 192, 192)","lineTension":0.1}]},"options":{}});
		
		var data = {
			    datasets: [{
			        data: [10, 20, 30],
		            backgroundColor: [
		                "#FF6384",
		                "#36A2EB",
		                "#FFCE56"
		            ],
		            hoverBackgroundColor: [
		                "#FF6384",
		                "#36A2EB",
		                "#FFCE56"
		            ]
			    }],

			    // These labels appear in the legend and in the tooltips when hovering different arcs
			    labels: [
			        'Red',
			        'Yellow',
			        'Blue'
			    ]
			};
		
		
		
		var myChart3 = new Chart(ctx3,{
		    type: 'pie',
		    data: data,
		    options : {}
		});
		
		
//		var myChart3 = new Chart(ctx3, {
//		    type: 'bar',
//		    data: {
//		        labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
//		        datasets: [{
//		            label: '# of Votes',
//		            data: [12, 19, 3, 5, 2, 3],
//		            backgroundColor: [
//		                'rgba(255, 99, 132, 0.2)',
//		                'rgba(54, 162, 235, 0.2)',
//		                'rgba(255, 206, 86, 0.2)',
//		                'rgba(75, 192, 192, 0.2)',
//		                'rgba(153, 102, 255, 0.2)',
//		                'rgba(255, 159, 64, 0.2)'
//		            ],
//		            borderColor: [
//		                'rgba(255,99,132,1)',
//		                'rgba(54, 162, 235, 1)',
//		                'rgba(255, 206, 86, 1)',
//		                'rgba(75, 192, 192, 1)',
//		                'rgba(153, 102, 255, 1)',
//		                'rgba(255, 159, 64, 1)'
//		            ],
//		            borderWidth: 1
//		        }]
//		    },
//		    options: {
//		        scales: {
//		            yAxes: [{
//		                ticks: {
//		                    beginAtZero:true
//		                }
//		            }]
//		        }
//		    }
//		});
		
		
		var myChart4 = new Chart(ctx4, {
		    type: 'horizontalBar',
		    data: {
		        labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
		        datasets: [{
		            label: '# of Votes',
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255,99,132,1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {}
		});
		
		
//		var myChart4 = new Chart(ctx4, {
//		    type: 'bar',
//		    data: {
//		        labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
//		        datasets: [{
//		            label: '# of Votes',
//		            data: [12, 19, 3, 5, 2, 3],
//		            backgroundColor: [
//		                'rgba(255, 99, 132, 0.2)',
//		                'rgba(54, 162, 235, 0.2)',
//		                'rgba(255, 206, 86, 0.2)',
//		                'rgba(75, 192, 192, 0.2)',
//		                'rgba(153, 102, 255, 0.2)',
//		                'rgba(255, 159, 64, 0.2)'
//		            ],
//		            borderColor: [
//		                'rgba(255,99,132,1)',
//		                'rgba(54, 162, 235, 1)',
//		                'rgba(255, 206, 86, 1)',
//		                'rgba(75, 192, 192, 1)',
//		                'rgba(153, 102, 255, 1)',
//		                'rgba(255, 159, 64, 1)'
//		            ],
//		            borderWidth: 1
//		        }]
//		    },
//		    options: {
//		        scales: {
//		            yAxes: [{
//		                ticks: {
//		                    beginAtZero:true
//		                }
//		            }]
//		        }
//		    }
//		});
		
		var myChart5 = new Chart(ctx5, {
		    type: 'bar',
		    data: {
		        labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
		        datasets: [{
		            label: '# of Votes',
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255,99,132,1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero:true
		                }
		            }]
		        }
		    }
		});
		
		var myChart6 = new Chart(ctx6, {
		    type: 'bar',
		    data: {
		        labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
		        datasets: [{
		            label: '# of Votes',
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255,99,132,1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		    options: {
		        scales: {
		            yAxes: [{
		                ticks: {
		                    beginAtZero:true
		                }
		            }]
		        }
		    }
		});