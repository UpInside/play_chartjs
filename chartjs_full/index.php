<?php

require_once __DIR__ . '/config.php';

$read = new \CRUD\Read;
$chart = new \Helpers\Chart;

?><!DOCTYPE>
<html lang="pt-br">
<head>
    <title>Geração de Gráficos com ChartJs</title>
    <link rel="stylesheet" href="_cdn/css/reset.css">
</head>
<body>

<?php

$read->readFull('SELECT 
                            c.category_title AS label, 
                            COUNT(1) AS value
                            
                            FROM categories c 
                            INNER JOIN posts p ON post_category = c.category_id 
                            GROUP BY c.category_title');

$categoryPosts = ($read->getResult() ? $read->getResult() : null);

?>

<div class="chart">
    <canvas class="chartLine"
            data-chart-background-color="<?= $chart->getColorGreenOnlyWithOpacity() ?>"
            data-chart-border-color="<?= $chart->getColorGreenOnly() ?>"
            data-chart-labels="<?= $chart->getLabel($categoryPosts) ?>"
            data-chart-values="<?= $chart->getValue($categoryPosts) ?>"></canvas>
</div>

<div class="chart">
    <canvas class="chartBar"
            data-chart-background-color="<?= $chart->getColorRandom($categoryPosts, true) ?>"
            data-chart-border-color="<?= $chart->getColorRandom($categoryPosts, false) ?>"
            data-chart-labels="<?= $chart->getLabel($categoryPosts) ?>"
            data-chart-values="<?= $chart->getValue($categoryPosts) ?>"></canvas>
</div>

<div class="chart">
    <canvas class="chartPie"
            data-chart-background-color="<?= $chart->getColorRandom($categoryPosts, false) ?>"
            data-chart-labels="<?= $chart->getLabel($categoryPosts) ?>"
            data-chart-values="<?= $chart->getValue($categoryPosts) ?>"></canvas>
</div>

<div class="chart">
    <canvas class="chartDoughnut"
            data-chart-background-color="<?= $chart->getColorRandom($categoryPosts, false) ?>"
            data-chart-labels="<?= $chart->getLabel($categoryPosts) ?>"
            data-chart-values="<?= $chart->getValue($categoryPosts) ?>"></canvas>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"></script>
<script>
    $(function () {
        var charLine = $('.chartLine');
        new Chart(charLine, {
            type: 'line',
            data: {
                labels: charLine.data('chart-labels').split('|'),
                datasets: [{
                    label: 'My First dataset',
                    backgroundColor: charLine.data('chart-background-color'),
                    borderColor: charLine.data('chart-border-color'),
                    data: charLine.data('chart-values').split('|'),
                }]
            },
            options: {
                responsive: true,
                title: {
                    display: true,
                    text: 'Chart.js Line Chart'
                },
                tooltips: {
                    mode: 'index',
                    intersect: false,
                },
                hover: {
                    mode: 'nearest',
                    intersect: true
                },
                scales: {
                    xAxes: [{
                        display: true,
                        scaleLabel: {
                            display: true,
                            labelString: 'Month'
                        }
                    }],
                    yAxes: [{
                        display: true,
                        scaleLabel: {
                            display: true,
                            labelString: 'Value'
                        },
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });

        var chartBar = $('.chartBar');
        new Chart(chartBar, {
            type: 'bar',
            data: {
                labels: chartBar.data('chart-labels').split('|'),
                datasets: [{
                    label: 'Dataset 1',
                    backgroundColor: chartBar.data('chart-background-color').split('|'),
                    borderColor: chartBar.data('chart-border-color').split('|'),
                    borderWidth: 1,
                    data: chartBar.data('chart-values').split('|')
                }]

            },
            options: {
                responsive: true,
                legend: {
                    position: 'top',
                },
                title: {
                    display: true,
                    text: 'Chart.js Bar Chart'
                },
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });

        var chartPie = $('.chartPie');
        new Chart(chartPie, {
            type: 'pie',
            data: {
                datasets: [{
                    data: chartPie.data('chart-values').split('|'),
                    backgroundColor: chartPie.data('chart-background-color').split('|'),
                    label: 'Dataset 1'
                }],
                labels: chartPie.data('chart-labels').split('|')
            },
            options: {
                responsive: true
            }
        });

        var chartDoughnut = $('.chartDoughnut');
        new Chart(chartDoughnut, {
            type: 'doughnut',
            data: {
                datasets: [{
                    data: chartDoughnut.data('chart-values').split('|'),
                    backgroundColor: chartDoughnut.data('chart-background-color').split('|'),
                    label: 'Dataset 1'
                }],
                labels: chartDoughnut.data('chart-labels').split('|')
            },
            options: {
                responsive: true,
                legend: {
                    position: 'top',
                },
                title: {
                    display: true,
                    text: 'Chart.js Doughnut Chart'
                },
                animation: {
                    animateScale: true,
                    animateRotate: true
                }
            }
        });
    });
</script>
</body>
</html>