function checkHundredPercent(valueList, total){
	var percentList=[];
	var index = 1;
	
	for(var i=0; i<4; i++){
		percentList[i] = 0;
		for(var j=0; j<valueList.length; j++){
			percentList[i] += parseFloat(((parseFloat(valueList[j]) * 100) / total).toFixed(i));
		}
	}
	var order = [1,2,0,3];
	
	for(var i=0; i<order.length; i++){
		if(percentList[order[i]] == 100){
			index = order[i];
			break;
		}
	}
	
	return index;
}

/*
 *  누적 검사수 = 누적 검사완료수(결과양성 + 결과음성) + 검사진행중
 *  누적 확진률 = (결과양성 / 누적 검사완료수) * 100
 *  누적 확진환자수(결과양성) = 치료중 환자 + 완치(격리해제) + 사망자
 */

/*
 *  검사현황(Inspect Status : IS) - 검사진행중(inspect), 결과양성(positive), 결과음성(negative)
 *  Chart - Donut : label, figure, bgColor, total
 */

var IS_data = {};

//var IS_data = {
//    label: ['结果为阴性', '检测中', '结果为结果(确诊)'],
//    figure: [403882, 17885, 9976]
//};

function ISChart() {
	var IS_total = IS_data.figure.reduce(function(a, b){return parseInt(a) + parseInt(b)}, 0);
	var i = checkHundredPercent(IS_data.figure, IS_total);
	
    new Chart(document.getElementById('inspect_status'), {
        type: 'doughnut',
        data: {
            labels: IS_data.label,
            datasets: [
                {
                    data: IS_data.figure,
                    backgroundColor: ['#3ca8bb', '#ededed', '#105a67']
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: false },
            tooltips: { enabled: false },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 0,
                    top: 32,
                    bottom: 16
                }
            },
            plugins: {
                datalabels: {
                    display: true,
                    labels: {
                        inside: {
                            align: 'end',
                            anchor: 'end',
                            textAlign: 'center',
                            offset: function(a) {
                                var leng = a.chart.config.data.datasets[0].data.length;
                                var value = a.chart.config.data.datasets[0].data[a.dataIndex];
                                var total = IS_total;
                                if (((value * 100) / total) < 25) {
                                    if ((leng - 1) === a.dataIndex) {
                                        return 12;
                                    } else {
                                        return 0;
                                    }
                                } else {
                                    return 0;
                                }
                            },
                            font: {
                                family: "'Lato', 'Noto Sans CJK kr'",
                                size: 12,
                                lineHeight: '18px'
                            },
                            color: 'black',
                            formatter: function(a, b) {
                                return (
                                    ' ' + b.chart.data.labels[b.dataIndex] + ' ' + a.toLocaleString() + '/' + ((a * 100) / IS_total).toFixed(i) + ' %'
                                );
                            }
                        }
                    }
                }
            }
        }
    });
}

/*
 *  주간환자동향(Weekly Patient Status : WPS) - 치료중(cure), 완치(complete), 사망(die)
 *  Chart - Bar + Line
 */

var WPS_data = {
	    date: ['3.27','3.28', '3.29', '3.30', '3.31','4.1', '4.2'],
	    complete_day:[384,283,222,195,180,159,261],
	    confirm_day:[91,146,105,78,125,101,89],
	    cure_total:[4665,4523,4398,4275,4216,4155,3979],
	    complete_total:[4528,4811,5033,5228,5408,5567,5828]
};

function WPSChart() {
    new Chart(document.getElementById('weekly_patient_status'), {
        type: 'bar',
        data: {
            labels: WPS_data.date,
            datasets: [
                {
                    type: 'line',
                    data: WPS_data.cure_total,
                    pointStyle: 'rect',
                    pointRadius: '4',
                    pointBackgroundColor: '#28afb4',
                    pointBorderColor: '#28afb4',
                    borderColor: '#28afb4',
                    borderWidth: 2,
                    fill: false,
                    yAxisID: 'yAxes_right'
                },
                {
                    type: 'line',
                    data: WPS_data.complete_total,
                    pointStyle: 'triangle',
                    pointRadius: '4',
                    pointBackgroundColor: '#2a5ebc',
                    pointBorderColor: '#2a5ebc',
                    borderColor: '#2a5ebc',
                    borderWidth: 2,
                    fill: false,
                    yAxisID: 'yAxes_right'
                },
                {
                    type: 'bar',
                    data: WPS_data.complete_day,
                    backgroundColor: '#81bc57',
                    categoryPercentage: 0.75,
                    barPercentage: 0.75,
                    yAxisID: 'yAxes_left'
                },
                {
                    type: 'bar',
                    data: WPS_data.confirm_day,
                    backgroundColor: '#ffb45a',
                    categoryPercentage: 0.75,
                    barPercentage: 0.75,
                    yAxisID: 'yAxes_left'
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: false },
            tooltips: { enabled: false },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 0,
                    top: 24,
                    bottom: 0
                }
            },
            scales: {
                yAxes: [
                    {
                        display: true,
                        ticks: {
                            beginAtZero: true,
                            fontColor: '#666',
                            fontSize: 10,
                            stepSize: 200,
                            callback: function(a, b, c) {
                            	return a.toLocaleString();
                            }
                        },
                        position: 'right',
                        id: 'yAxes_right',
                        gridLines: {
                            display: false
                        }
                    },
                    {
                        display: true,
                        ticks: {
                            beginAtZero: true,
                            fontColor: '#666',
                            fontSize: 10,
                            stepSize: 50,
                            callback: function(a, b, c) {
                            	return a.toLocaleString();
                            }
                        },
                        position: 'left',
                        id: 'yAxes_left',
                        gridLines: {
                            display: true,
                            zeroLineColor: '#000'
                        }
                    }
                ],
                xAxes: [
                    {
                        display: true,
                        ticks: {
                            fontColor: '#333',
                            fontSize: 10
                        },
                        gridLines: {
                            display: false
                        }
                    }
                ]
            },
            plugins: {
                datalabels: {
                    align: 'end',
                    anchor: 'end',
                    textAlign: 'center',
                    offset: 0,
                    font: {
                        family: 'Lato',
                        size: 11,
                        weight: 'bold'
                    },
                    color: function(a) {
                        if (a.datasetIndex === 0) {
                            return '#28afb4';
                        } else if (a.datasetIndex === 1) {
                            return '#2a5ebc';
                        } else if (a.datasetIndex === 2) {
                            return '#81bc57';
                        } else if (a.datasetIndex === 3) {
                            return '#ffb45a';
                        } 
                    },
                    formatter: function(a, b) {
                    	return a.toLocaleString();
                    }
                }
            }
        }
    });
}

/*
 *  국가별 확진환자 추세(National Patient Trend) - 대한민국(Korea), 중국(China), 이탈리아(Italy), 이란(Iran), 스페인(Spain), 프랑스(France), 독일(Germany), 미국(America), 스위스(Switzerland), 영국(UK)
 *  Chart - Line
 */

var NPT_data = {};
//var NPT_data = {
//		date: ['3.27','3.28', '3.29', '3.30', '3.31', '4.1', '4.2'],
//		korea:[9332,9478, 9583, 9661,9786,9887,9976],
//	    china:[81340,81394,81439,81470,81518,81518,81518],
//	    italy:[80539,86498,92472,97689,101739,105792,110574],
//	    iran:[29406,32332,35408,38309,41495,44606,47593],
//	    spain:[56188,64059,72248,78797,85159,94417,102136],
//	    france:[29155,32964,37575,40174,44550,52128,56989],
//	    germany:[43938,50871,57695,62095,66885,71690,77872],
//	    america:[83507,101657,121117,139675,161807,186265,213372],
//	    switzerland:[10714,12161,13213,14336,15475,16176,17139],
//	    uk:[10658,14543,17089,19522,22141,25150,29474]
//};

function NPTChart() {
    new Chart(document.getElementById('national_patient_trend'), {
        type: 'bar', // bar 타입을 넣어야 Line Point가 중앙정렬 된다.
        data: {
            labels: NPT_data.date,
            datasets: [
                {
                    type: 'line',
                    data: NPT_data.korea,
                    pointStyle: 'circle',
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === (a.chart.config.data.labels.length - 1)) {
                            return '4';
                        } else {
                            return '0';
                        }
                    },
                    pointBackgroundColor: '#4f4f4f',
                    pointBorderColor: '#4f4f4f',
                    borderColor: '#4f4f4f',
                    borderWidth: 2,
                    fill: false,
                },
                {
                    type: 'line',
                    data: NPT_data.china,
                    pointStyle: 'rect',
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === (a.chart.config.data.labels.length - 1)) {
                            return '4';
                        } else {
                            return '0';
                        }
                    },
                    pointBackgroundColor: '#e92828',
                    pointBorderColor: '#e92828',
                    borderColor: '#e92828',
                    borderWidth: 2,
                    fill: false,
                },
                {
                    type: 'line',
                    data: NPT_data.italy,
                    pointStyle: 'triangle',
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === (a.chart.config.data.labels.length - 1)) {
                            return '4';
                        } else {
                            return '0';
                        }
                    },
                    pointBackgroundColor: '#15399e',
                    pointBorderColor: '#15399e',
                    borderColor: '#15399e',
                    borderWidth: 2,
                    fill: false,
                },
                {
                    type: 'line',
                    data: NPT_data.iran,
                    pointStyle: 'circle',
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === (a.chart.config.data.labels.length - 1)) {
                            return '4';
                        } else {
                            return '0';
                        }
                    },
                    pointBackgroundColor: '#fff',
                    pointBorderColor: '#ff12ff',
                    borderColor: '#ff12ff',
                    borderWidth: 2,
                    fill: false,
                },
                {
                    type: 'line',
                    data: NPT_data.spain,
                    pointStyle: 'triangle',
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === (a.chart.config.data.labels.length - 1)) {
                            return '4';
                        } else {
                            return '0';
                        }
                    },
                    pointBackgroundColor: '#fff',
                    pointBorderColor: '#197b30',
                    borderColor: '#197b30',
                    borderWidth: 2,
                    fill: false,
                },
                {
                    type: 'line',
                    data: NPT_data.france,
                    pointStyle: 'rect',
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === (a.chart.config.data.labels.length - 1)) {
                            return '4';
                        } else {
                            return '0';
                        }
                    },
                    pointBackgroundColor: '#fff',
                    pointBorderColor: '#e92828',
                    borderColor: '#e92828',
                    borderWidth: 2,
                    fill: false,
                },
                {
                    type: 'line',
                    data: NPT_data.germany,
                    pointStyle: 'rectRot',
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === (a.chart.config.data.labels.length - 1)) {
                            return '4';
                        } else {
                            return '0';
                        }
                    },
                    pointBackgroundColor: '#fff',
                    pointBorderColor: '#0606ff',
                    borderColor: '#0606ff',
                    borderWidth: 2,
                    borderDash: [2, 1],
                    fill: false,
                },
                {
                    type: 'line',
                    data: NPT_data.america,
                    pointStyle: 'rectRot',
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === (a.chart.config.data.labels.length - 1)) {
                            return '4';
                        } else {
                            return '0';
                        }
                    },
                    pointBackgroundColor: '#e92828',
                    pointBorderColor: '#e92828',
                    borderColor: '#e92828',
                    borderWidth: 2,
                    borderDash: [2, 1],
                    fill: false,
                },
                {
                    type: 'line',
                    data: NPT_data.switzerland,
                    pointStyle: 'circle',
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === (a.chart.config.data.labels.length - 1)) {
                            return '4';
                        } else {
                            return '0';
                        }
                    },
                    pointBackgroundColor: '#721dca',
                    pointBorderColor: '#721dca',
                    borderColor: '#721dca',
                    borderWidth: 2,
                    borderDash: [2, 1],
                    fill: false,
                },
                {
                    type: 'line',
                    data: NPT_data.uk,
                    pointStyle: 'circle',
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === (a.chart.config.data.labels.length - 1)) {
                            return '4';
                        } else {
                            return '0';
                        }
                    },
                    pointBackgroundColor: '#00b8ce',
                    pointBorderColor: '#00b8ce',
                    borderColor: '#00b8ce',
                    borderWidth: 2,
                    borderDash: [2, 1],
                    fill: false,
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: false },
            tooltips: { 
                enabled: true,
                titleFontFamily: "'Lato'",
                bodyFontFamily: "'Lato'",
                bodyFontSize: 11,
                callbacks: {
                    label: function(a, b) {
                        return Number(a.value).toLocaleString();
                    }
                }
             },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 32,
                    top: 24,
                    bottom: 0
                }
            },
            scales: {
                yAxes: [
                    {
                        display: true,
                        ticks: {
                            beginAtZero: true,
                            fontColor: '#666',
                            fontSize: 10,
                            fontFamily: "'Lato'",
                            stepSize: 20000,
                            callback: function(value, index, values) {
//                                console.log(value, index, values);
                                if (value >= 1e4) {
                                    var units = ['萬', 'B', 'T'];
                                    var order = Math.floor(Math.log(value) / Math.log(10000));
                                    var unitname = units[(order - 1)];
                                    var num = Math.floor(value / 10000 * order);
                                    return num + unitname;
                                }
                            }
                        },
                        gridLines: {
                            display: true,
                            zeroLineColor: '#000'
                        }
                    }
                ],
                xAxes: [
                    {
                        display: true,
                        ticks: {
                            fontColor: '#333',
                            fontSize: 10,
                            fontFamily: "'Lato'"
                        },
                        gridLines: {
                            display: false,
                        }
                    }
                ]
            },
            plugins: {
                datalabels: {
                    display: function(a) {
                        if (a.dataIndex === (a.chart.config.data.labels.length - 1)) {
                            return true;
                        } else {
                            return false;
                        }
                    },
                    align: 'right',
                    anchor: 'center',
                    textAlign: 'left',
                    offset: 8,
                    font: {
                        family: 'Lato',
                        size: 11,
                        weight: 'bold'
                    },
                    color: function(a) {
                        if (a.datasetIndex === 0) {
                            return '#4f4f4f';
                        } else if (a.datasetIndex === 1) {
                            return '#e92828';
                        } else if (a.datasetIndex === 2) {
                            return '#15399e';
                        } else if (a.datasetIndex === 3) {
                            return '#ff12ff';
                        } else if (a.datasetIndex === 4) {
                            return '#197b30';
                        } else if (a.datasetIndex === 5) {
                            return '#e92828';
                        } else if (a.datasetIndex === 6) {
                            return '#0606ff';
                        } else if (a.datasetIndex === 7) {
                            return '#e92828';
                        } else if (a.datasetIndex === 8) {
                            return '#721dca';
                        } else if (a.datasetIndex === 9) {
                            return '#00b8ce';
                        }
                    },
                    formatter: function(a, b) {
                    	return a.toLocaleString();
                    }
                }
            }
        }
    });
}

/*
 *  지역별확진환자현향(Regional Patient Status : RPS) - 지역명(name), 지역별 확진환자(patient), 지역별 전일대비(compare)
 *  Chart - Map
 */

function RPSAChart() {

    var region = $('.regional_patient_status_A .rpsa_map .rpsam_graph svg path');
    var btn = $('.regional_patient_status_A .rpsa_map .rpsam_graph button');
    var detail = $('.regional_patient_status_A .rpsa_detail > div');

    btn.click(function(){
        var thDataCity = $(this).attr('data-city');
        btn.removeClass('select');
        $(this).addClass('select');
        detail.find('> div').removeClass('open');
        $('#' + thDataCity).addClass('open');
        return false;
    });

    region.click(function(){
        var thDataCity = $(this).attr('class');
        btn.removeClass('select');
        $('.regional_patient_status_A .rpsa_map .rpsam_graph button[data-city="' + thDataCity + '"]').addClass('select');
        detail.find('> div').removeClass('open');
        $('#' + thDataCity).addClass('open');
    });
}

/*
 *  지역발생비율(Regional Incidence Ratio : RIR) - 총 확진환자(total), 지역 확진환자(patient)
 *  Chart - Donut Gauge
 */

function RIRChart(a, b) {
    var RIR = $('#' + a).find('.regional_incidence_ratio');
    var RIR_path = RIR.find('.rir_path').get(0);
    var RIR_data = b;
    var RIR_length = RIR_path.getTotalLength();
    RIR_path.style.strokeDasharray = RIR_length + ' ' + RIR_length;
    RIR_path.style.strokeDashoffset = RIR_length * (1 - (RIR_data / 100));
    RIR.find('.rir_figure').text(RIR_data + '%');
}

function RPSACityRatio() {

    var detail = $('.regional_patient_status_A .rpsa_detail > div > div');

    detail.css({
        'opacity'   : 0,
        'display'   : 'block',
        'position'  : 'absolute'
    });

    detail.each(function(){

        var 
            id = $(this).attr('id'),
            data = Number($(this).find('.regional_incidence_ratio').attr('data-percentage'));

        if (id !== 'mapAll') {
            RIRChart(id, data);
        }
        
    });

    detail.removeAttr('style');
    
}

/*
 *  지역별확진환자현향(Regional Patient Status : RPS) - 지역별 확진환자(patient)
 *  Chart - Horizontal Bar
 */
var RPSBaseData = [];
//var RPSBaseData = [
//	{name: '首尔', count:488},
//	{name: '釜山', count:122},
//	{name: '大邱', count:6725},
//	{name: '仁川', count:73},
//	{name: '光州', count:25},
//	{name: '大田', count:36},
//	{name: '蔚山', count:40},
//	{name: '世宗', count:46},
//	{name: '京畿', count:516},
//	{name: '江原', count:39},
//	{name: '忠北', count:44},
//	{name: '忠南', count:133},
//	{name: '全北', count:14},
//	{name: '全南', count:14},
//	{name: '庆北', count:1304},
//	{name: '庆南', count:106},
//	{name: '济州', count:9},
//	{name: '隔離區', count:242}
//	];

function RPSBChart() {
	var newArray = RPSBaseData.sort(function(a, b){
	    return b.count - a.count;
	});
	var newName = newArray.map(function(a){return a.name});
	var newCount = newArray.map(function(a){return a.count});

	var RPS_B_data = {
	    label: newName,
	    figure: newCount
	};
	
    new Chart(document.getElementById('regional_patient_status_B'), {
        type: 'horizontalBar',
        data: {
            labels: RPS_B_data.label,
            datasets: [
                {
                    data: RPS_B_data.figure,
                    backgroundColor:'#e0217b',
                    categoryPercentage: 0.75,
                    barPercentage: 0.75
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: false },
            tooltips: { enabled: false },
            hover: { mode: null },
            scales: {
                yAxes: [
                    {
                        display: true,
                        ticks: {
                            fontColor: '#333',
                            fontSize: 11,
                            fontFamily: "'Noto Sans CJK kr'"
                        },
                        gridLines: {
                            display: false
                        }
                    }
                ],
                xAxes: [
                    {
                        ticks: {
                            fontColor: '#666',
                            fontSize: 10,
                            fontFamily: "'Lato'"
                        },
                        gridLines: {
                            display: true,
                            zeroLineColor: '#000'
                        }
                    }
                ]
            },
            plugins: {
                datalabels: {
                    align: 'end',
                    anchor: 'end',
                    offset: 2,
                    font: {
                        family: 'Lato',
                        size: 11,
                        weight: 'bold'
                    },
                    textAlign: 'left',
                    color: '#e0217b',
                    formatter: function(a, b) {
                    	return a.toLocaleString();
                    }
                }
            }
        }
    });
}

/*
 *  지역별확진환자비율 A(Regional Patient Ratio A : RPR_A) - 지역별 확진환자(patient) - 구분 : 대구, 경북, 서울, 경기, 기타
 *  Chart - Pie
 */
var RPR_A_data = {};
//var RPR_A_data = {
//    label: ['大邱\n', '庆北\n', '其他', '京畿', '首尔'],
//    figure: [6725,1304,943,516,488]
//};

function RPRAChart() {
	var RPR_A_total  = RPR_A_data.figure.reduce(function(a, b){return parseFloat(a) + parseFloat(b)}, 0);
	var i = checkHundredPercent(RPR_A_data.figure, RPR_A_total);
	
	RPR_A_data.label[0] += "\n";
	RPR_A_data.label[1] += "\n";

	new Chart(document.getElementById('regional_patient_ratio_A'), {
        type: 'pie',
        data: {
            labels: RPR_A_data.label,
            datasets: [
                {
                    data: RPR_A_data.figure,
                    backgroundColor: ['#ee5b59', '#f2999a', '#fce1e1', '#cb2828', '#870000']
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: false },
            tooltips: { enabled: false },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 0,
                    top: 40,
                    bottom: 4
                }
            },
            plugins: {
                datalabels: {
                    display: true,
                    labels: {
                        inside: {
                            align: 'end',
                            anchor: 'end',
                            textAlign: 'center',
                            offset: function(a) {
                                var leng = a.chart.config.data.datasets[0].data.length;
                                var value = a.chart.config.data.datasets[0].data[a.dataIndex];
                                var total = RPR_A_total;
                                if (((value * 100) / total) < 25) {
                                    if ((leng - 2) === a.dataIndex) {
                                        return 6;
                                    } else if ((leng - 1) === a.dataIndex) {
                                        return 20;
                                    } else {
                                        return 0;
                                    }
                                } else {
                                    return 0;
                                }
                            },
                            font: {
                                family: "'Lato', 'Noto Sans CJK kr'",
                                size: 12,
                                lineHeight: '18px'
                            },
                            color: 'black',
                            formatter: function(a, b) {
                                return (
                                    b.chart.config.data.labels[b.dataIndex] + ' ' + ((a * 100) / RPR_A_total).toFixed(i) + ' %'
                                );
                            }
                        }
                    }
                }
            }
        }
    });
}

/*
 *  지역별확진환자비율 B(Regional Patient Ratio B : RPR_B) - 지역별 확진환자(patient) - 구분 : 대구, 경북, 기타
 *  Chart - Donut
 */
var RPR_B_data = {};
//var RPR_B_data = {
//    label: ['大邱', '其他', '庆北'],
//    label: ['대구', '기타', '경북', '서울', '경기'],
//    figure: [67.4,19.5,13.1]
//};

function RPRBChart() {
	var RPR_B_total = RPR_B_data.figure.reduce(function(a, b){return parseFloat(a) + parseFloat(b)}, 0);
	var i = checkHundredPercent(RPR_B_data.figure, RPR_B_total);
    new Chart(document.getElementById('regional_patient_ratio_B'), {
        type: 'doughnut',
        data: {
            labels: RPR_B_data.label,
            datasets: [
                {
                    data: RPR_B_data.figure,
                    backgroundColor: ['#d84c4a', '#e3e3e3', '#e87473', '#ee9190', '#f4c8c8']
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: false },
            tooltips: { enabled: false },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 0,
                    top: 32,
                    bottom: 30
                }
            },
            plugins: {
                datalabels: {
                    display: true,
                    labels: {
                        inside: {
                            align: 'end',
                            anchor: 'end',
                            textAlign: 'center',
                            offset: 0,
                            font: {
                                family: "'Lato', 'Noto Sans CJK kr'",
                                size: 12,
                                lineHeight: '17px'
                            },
                            color: 'black',
                            formatter: function(a, b) {
                                return (
                                    b.chart.data.labels[b.dataIndex] + '\n' + ((a * 100) / RPR_B_total).toFixed(i) + ' %'
                                );
                            }
                        }
                    }
                }
            }
        }
    });
}

/*
 *  집단발생비율(Group Incidence Ratio : GIR) - 총 확진환자(total), 집단별 확진환자(patient)
 *  Chart - Donut
 */
var GIR_data = {};
//var GIR_data = {
//    label: ['新天地相关', '其他集体发生', '零星性发生'],
//    figure: [52.3, 31.2, 16.5]
//};

function GIRChart() {
	var GIR_total = GIR_data.figure.reduce(function(a, b){return parseFloat(a) + parseFloat(b)}, 0);
	
    new Chart(document.getElementById('group_incidence_ratio'), {
        type: 'doughnut',
        data: {
            labels: GIR_data.label,
            datasets: [
                {
                    data: GIR_data.figure,
                    backgroundColor: ['#009c96', '#2fc9c3', '#e3e3e3']
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: false },
            tooltips: { enabled: false },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 0,
                    top: 32,
                    bottom: 8
                }
            },
            plugins: {
                datalabels: {
                    display: true,
                    labels: {
                        inside: {
                            align: 'end',
                            anchor: 'end',
                            textAlign: 'center',
                            offset: 0,
                            font: {
                                family: "'Lato', 'Noto Sans CJK kr'",
                                size: 12,
                                lineHeight: '18px'
                            },
                            color: 'black',
                            formatter: function(a, b) {
                                return (
                                    b.chart.data.labels[b.dataIndex] + '\n' + a + ' %'
                                );
                            }
                        }
                    }
                }
            }
        }
    });
}

/*
 *  확진환자추세(Patient Trend) - 누적(total), 일일(daily)
 *  Chart - Bar + Line
 */

var PT_data = {};
//var PT_data = {
//		date: ['3.27','3.28', '3.29', '3.30', '3.31','4.1', '4.2'],
//	    total: [9332,9478,9583,9661,9786,9887,9976],
//	    daily: [91,146,105,78,125,101,89]
//};

function PTChart() {
    new Chart(document.getElementById('patient_trend'), {
        type: 'bar',
        data: {
            labels: PT_data.date,
            datasets: [
                {
                    type: 'line',
                    data: PT_data.daily,
                    pointStyle: 'circle',
                    pointRadius: '6',
                    pointBackgroundColor: '#ff8400',
                    pointBorderColor: '#fff',
                    borderColor: '#ff8400',
                    borderWidth: 2,
                    fill: false,
                    yAxisID: 'yAxes_right'
                },
                {
                    type: 'bar',
                    data: PT_data.total,
                    backgroundColor: '#3571cc',
                    categoryPercentage: 0.6,
                    barPercentage: 0.6,
                    yAxisID: 'yAxes_left'
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: false },
            tooltips: {
                enabled: true,
                titleFontFamily: "'Lato'",
                bodyFontFamily: "'Lato'",
                bodyFontSize: 11,
                callbacks: {
                    label: function(a, b) {
                        return Number(a.value).toLocaleString();
                    }
                }
            },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 0,
                    top: 24,
                    bottom: 0
                }
            },
            scales: {
                yAxes: [
                    {
                        display: true,
                        ticks: {
                            beginAtZero: true,
                            fontColor: '#666',
                            fontSize: 10,
                            fontFamily: "'Lato'",
                            max: (function(){
                                var maxValue = Math.max.apply(null, PT_data.daily),
                                axisMaxValue = parseInt(maxValue * 1.5),
                                maxLength = String(axisMaxValue).length - 2,
                                squared = Math.pow(10, maxLength);
                                return Math.floor(axisMaxValue / squared) * squared;
                            })(),
                            callback: function(a, b, c) {
                            	return a.toLocaleString();
                            }
                        },
                        position: 'right',
                        id: 'yAxes_right',
                        gridLines: {
                            display: false
                        }
                    },
                    {
                        display: true,
                        ticks: {
                            beginAtZero: true,
                            fontColor: '#666',
                            fontSize: 10,
                            fontFamily: "'Lato'",
//                            min: (function(){
//                                var minValue = Math.min.apply(null, PT_data.total),
//                                maxLength = String(minValue).length - 1,
//                                squared = Math.pow(10, maxLength);
//                                return Math.floor(minValue / squared) * squared;
//                            })(),
//                            stepSize: (function(){                                
//                                var minValue = Math.min.apply(null, PT_data.total),
//                                maxValue = Math.max.apply(null, PT_data.total),
//                                axisMaxValue = parseInt(maxValue * 1.125),
//                                maxLength = 0,
//                                squared = 0;
//
//                                if (minValue.length !== axisMaxValue.length) {
//                                    maxLength = String(minValue).length - 1;
//                                    squared = Math.pow(10, maxLength);
//                                } else {
//                                    if (String(minValue)[0] !== String(axisMaxValue)[0]) {
//                                        maxLength = String(minValue).length - 1;
//                                        squared = Math.pow(10, maxLength);
//                                    } else {
//                                        maxLength = String(minValue).length - 2;
//                                        squared = Math.pow(10, maxLength);
//                                    }
//                                }
//                                
//                                return squared;
//                            })(),
//                            max: (function(){
//                                var maxValue = Math.max.apply(null, PT_data.total),
//                                axisMaxValue = parseInt(maxValue * 1.125),
//                                maxLength = String(axisMaxValue).length - 2,
//                                squared = Math.pow(10, maxLength);
//                                return Math.floor(axisMaxValue / squared) * squared;
//                            })(),
                            callback: function(a, b, c) {
                            	return a.toLocaleString();
                            }
                        },
                        position: 'left',
                        id: 'yAxes_left',
                        gridLines: {
                            display: true,
                            zeroLineColor: '#000'
                        }
                    }
                ],
                xAxes: [
                    {
                        display: true,
                        ticks: {
                            fontColor: '#333',
                            fontSize: 10,
                            fontFamily: "'Lato'"
                        },
                        gridLines: {
                            display: false
                        }
                    }
                ]
            },
            plugins: {
                datalabels: {
                	display: function(a) {
                        if (a.datasetIndex === 1) {
                            if (a.dataIndex === a.chart.config.data.labels.length - 1) {
                                return true;
                            } else {
                                return false;
                            }
                        } else {
                            return true;
                        }
                    },                  	
                    align: 'end',
                    anchor: 'end',
                    textAlign: 'center',
                    offset: 0,
                    font: {
                        family: 'Lato',
                        size: 13,
                        weight: 'bold'
                    },
                    textStrokeColor: 'rgba(255,255,255,0.8)',
                    textStrokeWidth: 3,
                    color: function(a) {
                        if (a.datasetIndex === 0) {
                            return '#d43011';
                        } else {
                            return '#3571cc';
                        }
                    },
                    formatter: function(a, b) {
                    	var a = Number(a);
                    	return a.toLocaleString();
                    }
                }
            }
        }
    });
}

/*
 *  격리해제추세(Complete Trend) - 누적(total), 일일(daily)
 *  Chart - Bar + Line
 */

var CT_data = {};
//var CT_data = {
//		date: ['3.27','3.28', '3.29', '3.30', '3.31','4.1', '4.2'],
//	    total: [4528,4811,5033,5228,5408,5567,5828],
//	    daily: [384,283,222,195,180,159,261]
//};

function CTChart() {
    new Chart(document.getElementById('complete_trend'), {
        type: 'bar',
        data: {
            labels: CT_data.date,
            datasets: [
                {
                    type: 'line',
                    data: CT_data.daily,
                    pointStyle: 'circle',
                    pointRadius: '6',
                    pointBackgroundColor: '#1f7ccb',
                    pointBorderColor: '#fff',
                    borderColor: '#1f7ccb',
                    borderWidth: 2,
                    fill: false,
                    yAxisID: 'yAxes_right'
                },
                {
                    type: 'bar',
                    data: CT_data.total,
                    backgroundColor: '#e0217b',
                    categoryPercentage: 0.6,
                    barPercentage: 0.6,
                    yAxisID: 'yAxes_left'
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: false },
            tooltips: {
                enabled: true,
                titleFontFamily: "'Lato'",
                bodyFontFamily: "'Lato'",
                bodyFontSize: 11,
                callbacks: {
                    label: function(a, b) {
                        return Number(a.value).toLocaleString();
                    }
                }
            },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 0,
                    top: 24,
                    bottom: 0
                }
            },
            scales: {
                yAxes: [
                    {
                        display: true,
                        ticks: {
                            beginAtZero: true,
                            fontColor: '#666',
                            fontSize: 10,
                            fontFamily: "'Lato'",
                            max: (function(){
                                var maxValue = Math.max.apply(null, CT_data.daily),
                                axisMaxValue = parseInt(maxValue * 1.5),
                                maxLength = String(axisMaxValue).length - 2,
                                squared = Math.pow(10, maxLength);
                                return Math.floor(axisMaxValue / squared) * squared;
                            })(),
                            callback: function(a, b, c) {
                            	return a.toLocaleString();
                            }
                        },
                        position: 'right',
                        id: 'yAxes_right',
                        gridLines: {
                            display: false
                        }
                    },
                    {
                        display: true,
                        ticks: {
                            beginAtZero: true,
                            fontColor: '#666',
                            fontSize: 10,
                            fontFamily: "'Lato'",
//                            min: (function(){
//                                var minValue = Math.min.apply(null, CT_data.total),
//                                maxLength = String(minValue).length - 1,
//                                squared = Math.pow(10, maxLength);
//                                return Math.floor(minValue / squared) * squared;
//                            })(),
//                            stepSize: (function(){                                
//                                var minValue = Math.min.apply(null, CT_data.total),
//                                maxValue = Math.max.apply(null, CT_data.total),
//                                axisMaxValue = parseInt(maxValue * 1.1),
//                                maxLength = 0,
//                                squared = 0;
//
//                                if (minValue.length !== axisMaxValue.length) {
//                                    maxLength = String(minValue).length - 1;
//                                    squared = Math.pow(10, maxLength);
//                                } else {
//                                    if (String(minValue)[0] !== String(axisMaxValue)[0]) {
//                                        maxLength = String(minValue).length - 1;
//                                        squared = Math.pow(10, maxLength);
//                                    } else {
//                                        maxLength = String(minValue).length - 2;
//                                        squared = Math.pow(10, maxLength);
//                                    }
//                                }
//                                
//                                return squared;
//                            })(),
//                            max: (function(){
//                                var maxValue = Math.max.apply(null, CT_data.total),
//                                axisMaxValue = parseInt(maxValue * 1.1),
//                                maxLength = String(axisMaxValue).length - 2,
//                                squared = Math.pow(10, maxLength);
//                                console.log(Math.floor(axisMaxValue / squared) * squared);
//                                return Math.floor(axisMaxValue / squared) * squared;
//                            })(),
                            callback: function(a, b, c) {
                            	return a.toLocaleString();
                            }
                        },
                        position: 'left',
                        id: 'yAxes_left',
                        gridLines: {
                            display: true,
                            zeroLineColor: '#000'
                        }
                    }
                ],
                xAxes: [
                    {
                        display: true,
                        ticks: {
                            fontColor: '#333',
                            fontSize: 10,
                            fontFamily: "'Lato'"
                        },
                        gridLines: {
                            display: false
                        }
                    }
                ]
            },
            plugins: {
                datalabels: {
                	display: function(a) {
                        if (a.datasetIndex === 1) {
                            if (a.dataIndex === a.chart.config.data.labels.length - 1) {
                                return true;
                            } else {
                                return false;
                            }
                        } else {
                            return true;
                        }
                    },                  	
                    align: 'end',
                    anchor: 'end',
                    textAlign: 'center',
                    offset: 0,
                    font: {
                        family: 'Lato',
                        size: 13,
                        weight: 'bold'
                    },
                    textStrokeColor: 'rgba(255,255,255,0.8)',
                    textStrokeWidth: 3,
                    color: function(a) {
                        if (a.datasetIndex === 0) {
                            return '#1f7ccb';
                        } else {
                            return '#e0217b';
                        }
                    },
                    formatter: function(a, b) {
                    	var a = Number(a);
                    	return a.toLocaleString();
                    }
                }
            }
        }
    });
}

/*
 *  집단발생비율(Transmission Case : TC)
 *  Chart - Donut
 */
var TC_data = {};
//var TC_data = {
//    label: [],
//    figure: []
//};

function TCChart() {
	var TC_total = TC_data.figure.reduce(function(a, b){return parseFloat(a) + parseFloat(b)}, 0);
	var i = checkHundredPercent(TC_data.figure, TC_total);
	
    new Chart(document.getElementById('group_incidence_ratio'), {
        type: 'doughnut',
        data: {
            labels: TC_data.label,
            datasets: [
                {
                    data: TC_data.figure,
                    backgroundColor: ['#009c96', '#44cfcb', '#184745', '#579593', '#7aa646', '#adadad']
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: false },
            tooltips: { enabled: false },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 0,
                    top: 48,
                    bottom: 35
                }
            },
            plugins: {
                datalabels: {
                    display: true,
                    labels: {
                        inside: {
                            align: 'end',
                            anchor: 'end',
                            textAlign: 'center',
                            offset: function(a, b) {
                            	console.log(a.dataset.data.length);
                            	if (a.dataIndex === (a.dataset.data.length - 1)) {
                            		return 24;
                            	} else if (a.dataIndex === (a.dataset.data.length - 2)) {
                            		return 8;
                            	} else {
                            		return 0;
                            	}
                            },
                            font: {
                                family: "'Lato', 'Noto Sans CJK kr'",
                                size: 12,
                                lineHeight: '16px'
                            },
                            color: 'black',
                            formatter: function(a, b) {
                            	if (b.dataIndex < 3) {
                            		return b.chart.data.labels[b.dataIndex] + "\n" + a + " / " + ((a * 100) / TC_total).toFixed(i) + ' %';
                            	} else {
                            		return b.chart.data.labels[b.dataIndex] + " " + a + " / " + ((a * 100) / TC_total).toFixed(i) + ' %';
                            	}
                            }
                        }
                    }
                }
            }
        }
    });
}



























/*
 * point style - triangle, rect, rectRot, circle
 * point color - pointBackgroundColor, pointBorderColor
 * line style - borderColor, borderWidth, borderDash
 * colors - #4f4f4f, #e92828, #15399e, #ff12ff, #197b30, #0606ff, #721dca, #00b8ce
 * #ffffff
 */

var N_Data = {
    USA: { kr: "미국", en: "USA", cn: "美国", pointStyle: "triangle", borderDash: [0, 0], backgroundColor: "#ff12ff", pointColor: "#ff12ff", lineColor: "#ff12ff", fontColor: "#ff12ff" },
    Brazil: { kr: "브라질", en: "Brazil", cn: "巴西", pointStyle: "rect", borderDash: [0, 0], backgroundColor: "#ffffff", pointColor: "#4f4f4f", lineColor: "#4f4f4f", fontColor: "#4f4f4f" },
    Russia: { kr: "러시아", en: "Russia", cn: "俄罗斯", pointStyle: "rectRot", borderDash: [0, 0], backgroundColor: "#ffffff", pointColor: "#e92828", lineColor: "#e92828", fontColor: "#e92828" },
    UK: { kr: "영국", en: "UK", cn: "英国", pointStyle: "circle", borderDash: [2, 1], backgroundColor: "#ffffff", pointColor: "#15399e", lineColor: "#15399e", fontColor: "#15399e" },
    Spain: { kr: "스페인", en: "Spain", cn: "西班牙", pointStyle: "triangle", borderDash: [2, 1], backgroundColor: "#ffffff", pointColor: "#ff12ff", lineColor: "#ff12ff", fontColor: "#ff12ff" },
    Italy: { kr: "이탈리아", en: "Italy", cn: "意大利", pointStyle: "rect", borderDash: [2, 1], backgroundColor: "#ffffff", pointColor: "#197b30", lineColor: "#197b30", fontColor: "#197b30" },
    India: { kr: "인도", en: "India", cn: "印度", pointStyle: "rectRot", borderDash: [2, 1], backgroundColor: "#ffffff", pointColor: "#0606ff", lineColor: "#0606ff", fontColor: "#0606ff" },
    Germany: { kr: "독일", en: "Germany", cn: "德国", pointStyle: "circle", borderDash: [0, 0], backgroundColor: "#ffffff", pointColor: "#721dca", lineColor: "#721dca", fontColor: "#721dca" },
    Peru: { kr: "페루", en: "Peru", cn: "秘鲁", pointStyle: "triangle", borderDash: [0, 0], backgroundColor: "#ffffff", pointColor: "#00b8ce", lineColor: "#00b8ce", fontColor: "#00b8ce" },
    Turkey: { kr: "터키", en: "Turkey", cn: "土耳其", pointStyle: "rect", borderDash: [0, 0], backgroundColor: "#4f4f4f", pointColor: "#4f4f4f", lineColor: "#4f4f4f", fontColor: "#4f4f4f" },
    Iran: { kr: "이란", en: "Iran", cn: "伊朗", pointStyle: "rectRot", borderDash: [0, 0], backgroundColor: "#e92828", pointColor: "#e92828", lineColor: "#e92828", fontColor: "#e92828" },
    France: { kr: "프랑스", en: "France", cn: "法国", pointStyle: "circle", borderDash: [2, 1], backgroundColor: "#15399e", pointColor: "#15399e", lineColor: "#15399e", fontColor: "#15399e" }
};

var NPTB_data = {
    date: ["6.1", "6.2", "6.3", "6.4", "6.5", "6.6", "6.7", "6.8", "6.9", "6.10", "6.11", "6.12", "6.13", "6.14"],
    USA: ["1786593", "1808291", "1830066", "1849560", "1870156", "1894753", "1917080", "1938842", "1956499", "1973803", "1997636", "2018875", "2044572", "2071782"],
    Brazil: ["514849", "526447", "555383", "584016", "614941", "630708", "657783", "676695", "692349", "739503", "772416", "802828", "828810", "850514"],
    Russia: ["405843", "414878", "423741", "432277", "441108", "449834", "458689", "467673", "476658", "485253", "493657", "502436", "511423", "520129"],
    UK: ["274762", "276332", "277985", "279856", "281661", "283311", "284868", "286194", "287399", "289140", "290143", "291409", "297535", "308993"],
    Spain: ["239429", "239638", "239932", "240326", "240660", "240978", "241310", "246628", "256611", "266598", "276583", "286579", "292950", "294375"],
    Italy: ["233019", "233197", "233515", "233836", "234013", "234531", "236657", "241550", "241717", "241966", "242280", "242707", "243209", "243605"],
    India: ["182143", "190535", "198706", "207615", "216919", "226770", "234801", "234998", "235278", "235561", "235763", "236142", "236305", "236651"],
    Germany: ["183410", "183594", "183879", "184121", "184472", "187400", "191758", "196515", "199696", "203736", "208823", "214788", "214788", "220749"],
    Peru: ["164476", "170039", "170039", "178914", "183198", "184924", "185450", "185750", "186109", "186506", "186522", "186691", "187226", "187267"],
    Turkey: ["163942", "164769", "165555", "166422", "167410", "168340", "169425", "171789", "173832", "175927", "177938", "180176", "182545", "184955"],
    Iran: ["151466", "154445", "157562", "160696", "164270", "167156", "169218", "170132", "171121", "172114", "173036", "174023", "175218", "176677"],
    France: ["151753", "152091", "151325", "151677", "152444", "153055", "153634", "153977", "154188", "154591", "155136", "155561", "156287", "156813"]
};

function NPTBChart() {
    new Chart(document.getElementById("national_patient_trend_B"), {
        type: "bar", // bar 타입을 넣어야 Line Point가 중앙정렬 된다.
        data: {
            labels: NPTB_data.date,
            datasets: [
                {
                    type: "line",
                    data: NPTB_data.USA,
                    label: N_Data.USA.cn,
                    pointStyle: N_Data.USA.pointStyle,
                    pointBackgroundColor: N_Data.USA.backgroundColor,
                    pointBorderColor: N_Data.USA.pointColor,
                    borderColor: N_Data.USA.lineColor,
                    borderDash: N_Data.USA.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTB_data.Brazil,
                    label: N_Data.Brazil.cn,
                    pointStyle: N_Data.Brazil.pointStyle,
                    pointBackgroundColor: N_Data.Brazil.backgroundColor,
                    pointBorderColor: N_Data.Brazil.pointColor,
                    borderColor: N_Data.Brazil.lineColor,
                    borderDash: N_Data.Brazil.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTB_data.Russia,
                    label: N_Data.Russia.cn,
                    pointStyle: N_Data.Russia.pointStyle,
                    pointBackgroundColor: N_Data.Russia.backgroundColor,
                    pointBorderColor: N_Data.Russia.pointColor,
                    borderColor: N_Data.Russia.lineColor,
                    borderDash: N_Data.Russia.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTB_data.UK,
                    label: N_Data.UK.cn,
                    pointStyle: N_Data.UK.pointStyle,
                    pointBackgroundColor: N_Data.UK.backgroundColor,
                    pointBorderColor: N_Data.UK.pointColor,
                    borderColor: N_Data.UK.lineColor,
                    borderDash: N_Data.UK.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTB_data.Spain,
                    label: N_Data.Spain.cn,
                    pointStyle: N_Data.Spain.pointStyle,
                    pointBackgroundColor: N_Data.Spain.backgroundColor,
                    pointBorderColor: N_Data.Spain.pointColor,
                    borderColor: N_Data.Spain.lineColor,
                    borderDash: N_Data.Spain.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTB_data.Italy,
                    label: N_Data.Italy.cn,
                    pointStyle: N_Data.Italy.pointStyle,
                    pointBackgroundColor: N_Data.Italy.backgroundColor,
                    pointBorderColor: N_Data.Italy.pointColor,
                    borderColor: N_Data.Italy.lineColor,
                    borderDash: N_Data.Italy.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTB_data.India,
                    label: N_Data.India.cn,
                    pointStyle: N_Data.India.pointStyle,
                    pointBackgroundColor: N_Data.India.backgroundColor,
                    pointBorderColor: N_Data.India.pointColor,
                    borderColor: N_Data.India.lineColor,
                    borderDash: N_Data.India.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTB_data.Germany,
                    label: N_Data.Germany.cn,
                    pointStyle: N_Data.Germany.pointStyle,
                    pointBackgroundColor: N_Data.Germany.backgroundColor,
                    pointBorderColor: N_Data.Germany.pointColor,
                    borderColor: N_Data.Germany.lineColor,
                    borderDash: N_Data.Germany.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTB_data.Peru,
                    label: N_Data.Peru.cn,
                    pointStyle: N_Data.Peru.pointStyle,
                    pointBackgroundColor: N_Data.Peru.backgroundColor,
                    pointBorderColor: N_Data.Peru.pointColor,
                    borderColor: N_Data.Peru.lineColor,
                    borderDash: N_Data.Peru.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTB_data.Turkey,
                    label: N_Data.Turkey.cn,
                    pointStyle: N_Data.Turkey.pointStyle,
                    pointBackgroundColor: N_Data.Turkey.backgroundColor,
                    pointBorderColor: N_Data.Turkey.pointColor,
                    borderColor: N_Data.Turkey.lineColor,
                    borderDash: N_Data.Turkey.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTB_data.Iran,
                    label: N_Data.Iran.cn,
                    pointStyle: N_Data.Iran.pointStyle,
                    pointBackgroundColor: N_Data.Iran.backgroundColor,
                    pointBorderColor: N_Data.Iran.pointColor,
                    borderColor: N_Data.Iran.lineColor,
                    borderDash: N_Data.Iran.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTB_data.France,
                    label: N_Data.France.cn,
                    pointStyle: N_Data.France.pointStyle,
                    pointBackgroundColor: N_Data.France.backgroundColor,
                    pointBorderColor: N_Data.France.pointColor,
                    borderColor: N_Data.France.lineColor,
                    borderDash: N_Data.France.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: true, position: "bottom", labels: { usePointStyle: true, boxWidth: 6, fontFamily: "Lato", fontSize: 11 } },
            tooltips: {
                enabled: true,
                titleFontFamily: "'Lato'",
                bodyFontFamily: "'Lato'",
                bodyFontSize: 11,
                callbacks: {
                    label: function(a, b) {
                        return Number(a.value).toLocaleString();
                    }
                }
            },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 60,
                    top: 0,
                    bottom: 0
                }
            },
            scales: {
                yAxes: [
                    {
                        display: true,
                        ticks: {
                            beginAtZero: true,
                            fontColor: "#666",
                            fontSize: 10,
                            fontFamily: "'Lato'"
                        },
                        gridLines: {
                            display: true,
                            zeroLineColor: "#000"
                        }
                    }
                ],
                xAxes: [
                    {
                        display: true,
                        ticks: {
                            fontColor: "#333",
                            fontSize: 10,
                            fontFamily: "'Lato'"
                        },
                        gridLines: {
                            display: false
                        }
                    }
                ]
            },
            plugins: {
                datalabels: {
                    display: function(a) {
                        if (a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return true;
                        } else {
                            return false;
                        }
                    },
                    align: "right",
                    anchor: "center",
                    textAlign: "left",
                    offset: 8,
                    font: {
                        family: "Lato",
                        size: 11,
                        weight: "bold"
                    },
                    color: function(a) {
                        if (a.datasetIndex === 0) {
                            return N_Data.USA.fontColor;
                        } else if (a.datasetIndex === 1) {
                            return N_Data.Brazil.fontColor;
                        } else if (a.datasetIndex === 2) {
                            return N_Data.Russia.fontColor;
                        } else if (a.datasetIndex === 3) {
                            return N_Data.UK.fontColor;
                        } else if (a.datasetIndex === 4) {
                            return N_Data.Spain.fontColor;
                        } else if (a.datasetIndex === 5) {
                            return N_Data.Italy.fontColor;
                        } else if (a.datasetIndex === 6) {
                            return N_Data.India.fontColor;
                        } else if (a.datasetIndex === 7) {
                            return N_Data.Germany.fontColor;
                        } else if (a.datasetIndex === 8) {
                            return N_Data.Peru.fontColor;
                        } else if (a.datasetIndex === 9) {
                            return N_Data.Turkey.fontColor;
                        } else if (a.datasetIndex === 10) {
                            return N_Data.Iran.fontColor;
                        } else if (a.datasetIndex === 11) {
                            return N_Data.France.fontColor;
                        }
                    },
                    formatter: function(a, b) {
                        return a.toLocaleString();
                    }
                }
            }
        }
    });
}

var NPTD_data = {
    date: ["6.1", "6.2", "6.3", "6.4", "6.5", "6.6", "6.7", "6.8", "6.9", "6.10", "6.11", "6.12", "6.13", "6.14"],
    USA: ["16817", "21698", "21775", "19494", "20596", "24597", "22327", "21762", "17657", "17304", "23833", "21239", "25697", "27210"],
    Brazil: ["16409", "11598", "28936", "28633", "30925", "15767", "27075", "18912", "15654", "47154", "32913", "30412", "25982", "21704"],
    Russia: ["9268", "9035", "8863", "8536", "8831", "8726", "8855", "8984", "8985", "8595", "8404", "8779", "8987", "8706"],
    UK: ["1936", "1570", "1653", "1871", "1805", "1650", "1557", "1326", "1205", "1741", "1003", "1266", "10956", "11458"],
    Spain: ["201", "209", "294", "394", "334", "318", "332", "9971", "9983", "9987", "9985", "9996", "1541", "1425"],
    Italy: ["355", "178", "318", "321", "177", "518", "9887", "240", "167", "249", "314", "427", "502", "396"],
    India: ["8380", "8392", "8171", "8909", "9304", "9851", "270", "197", "280", "283", "202", "379", "163", "346"],
    Germany: ["221", "184", "285", "242", "351", "4202", "4358", "4757", "3181", "4040", "5087", "5965", "0", "5961"],
    Peru: ["8805", "5563", "0", "8875", "4284", "452", "526", "300", "359", "397", "16", "169", "535", "41"],
    Turkey: ["839", "827", "786", "867", "988", "930", "2269", "2364", "2043", "2095", "2011", "2238", "2369", "2410"],
    Iran: ["2516", "2979", "3117", "3134", "3574", "2886", "878", "914", "989", "993", "922", "987", "1195", "1459"],
    France: ["257", "338", "-766", "352", "767", "611", "579", "343", "211", "403", "545", "425", "726", "526"]
};

function NPTDChart() {
    new Chart(document.getElementById("national_patient_trend_daily"), {
        type: "bar", // bar 타입을 넣어야 Line Point가 중앙정렬 된다.
        data: {
            labels: NPTD_data.date,
            datasets: [
                {
                    type: "line",
                    data: NPTD_data.USA,
                    label: N_Data.USA.cn,
                    pointStyle: N_Data.USA.pointStyle,
                    pointBackgroundColor: N_Data.USA.backgroundColor,
                    pointBorderColor: N_Data.USA.pointColor,
                    borderColor: N_Data.USA.lineColor,
                    borderDash: N_Data.USA.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTD_data.Brazil,
                    label: N_Data.Brazil.cn,
                    pointStyle: N_Data.Brazil.pointStyle,
                    pointBackgroundColor: N_Data.Brazil.backgroundColor,
                    pointBorderColor: N_Data.Brazil.pointColor,
                    borderColor: N_Data.Brazil.lineColor,
                    borderDash: N_Data.Brazil.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTD_data.Russia,
                    label: N_Data.Russia.cn,
                    pointStyle: N_Data.Russia.pointStyle,
                    pointBackgroundColor: N_Data.Russia.backgroundColor,
                    pointBorderColor: N_Data.Russia.pointColor,
                    borderColor: N_Data.Russia.lineColor,
                    borderDash: N_Data.Russia.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTD_data.UK,
                    label: N_Data.UK.cn,
                    pointStyle: N_Data.UK.pointStyle,
                    pointBackgroundColor: N_Data.UK.backgroundColor,
                    pointBorderColor: N_Data.UK.pointColor,
                    borderColor: N_Data.UK.lineColor,
                    borderDash: N_Data.UK.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTD_data.Spain,
                    label: N_Data.Spain.cn,
                    pointStyle: N_Data.Spain.pointStyle,
                    pointBackgroundColor: N_Data.Spain.backgroundColor,
                    pointBorderColor: N_Data.Spain.pointColor,
                    borderColor: N_Data.Spain.lineColor,
                    borderDash: N_Data.Spain.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTD_data.Italy,
                    label: N_Data.Italy.cn,
                    pointStyle: N_Data.Italy.pointStyle,
                    pointBackgroundColor: N_Data.Italy.backgroundColor,
                    pointBorderColor: N_Data.Italy.pointColor,
                    borderColor: N_Data.Italy.lineColor,
                    borderDash: N_Data.Italy.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTD_data.India,
                    label: N_Data.India.cn,
                    pointStyle: N_Data.India.pointStyle,
                    pointBackgroundColor: N_Data.India.backgroundColor,
                    pointBorderColor: N_Data.India.pointColor,
                    borderColor: N_Data.India.lineColor,
                    borderDash: N_Data.India.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTD_data.Germany,
                    label: N_Data.Germany.cn,
                    pointStyle: N_Data.Germany.pointStyle,
                    pointBackgroundColor: N_Data.Germany.backgroundColor,
                    pointBorderColor: N_Data.Germany.pointColor,
                    borderColor: N_Data.Germany.lineColor,
                    borderDash: N_Data.Germany.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTD_data.Peru,
                    label: N_Data.Peru.cn,
                    pointStyle: N_Data.Peru.pointStyle,
                    pointBackgroundColor: N_Data.Peru.backgroundColor,
                    pointBorderColor: N_Data.Peru.pointColor,
                    borderColor: N_Data.Peru.lineColor,
                    borderDash: N_Data.Peru.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTD_data.Turkey,
                    label: N_Data.Turkey.cn,
                    pointStyle: N_Data.Turkey.pointStyle,
                    pointBackgroundColor: N_Data.Turkey.backgroundColor,
                    pointBorderColor: N_Data.Turkey.pointColor,
                    borderColor: N_Data.Turkey.lineColor,
                    borderDash: N_Data.Turkey.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTD_data.Iran,
                    label: N_Data.Iran.cn,
                    pointStyle: N_Data.Iran.pointStyle,
                    pointBackgroundColor: N_Data.Iran.backgroundColor,
                    pointBorderColor: N_Data.Iran.pointColor,
                    borderColor: N_Data.Iran.lineColor,
                    borderDash: N_Data.Iran.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                },
                {
                    type: "line",
                    data: NPTD_data.France,
                    label: N_Data.France.cn,
                    pointStyle: N_Data.France.pointStyle,
                    pointBackgroundColor: N_Data.France.backgroundColor,
                    pointBorderColor: N_Data.France.pointColor,
                    borderColor: N_Data.France.lineColor,
                    borderDash: N_Data.France.borderDash,
                    borderWidth: 2,
                    fill: false,
                    pointRadius: function(a) {
                        if (a.dataIndex === 0 || a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return "4";
                        } else {
                            return "0";
                        }
                    }
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: true, position: "bottom", labels: { usePointStyle: true, boxWidth: 6, fontFamily: "Lato", fontSize: 11 } },
            tooltips: {
                enabled: true,
                titleFontFamily: "'Lato'",
                bodyFontFamily: "'Lato'",
                bodyFontSize: 11,
                callbacks: {
                    label: function(a, b) {
                        return Number(a.value).toLocaleString();
                    }
                }
            },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 40,
                    top: 0,
                    bottom: 0
                }
            },
            scales: {
                yAxes: [
                    {
                        display: true,
                        ticks: {
                            beginAtZero: true,
                            fontColor: "#666",
                            fontSize: 10,
                            fontFamily: "'Lato'"
                        },
                        gridLines: {
                            display: true,
                            zeroLineColor: "#000"
                        }
                    }
                ],
                xAxes: [
                    {
                        display: true,
                        ticks: {
                            fontColor: "#333",
                            fontSize: 10,
                            fontFamily: "'Lato'"
                        },
                        gridLines: {
                            display: false
                        }
                    }
                ]
            },
            plugins: {
                datalabels: {
                    display: function(a) {
                        if (a.dataIndex === a.chart.config.data.labels.length - 1) {
                            return true;
                        } else {
                            return false;
                        }
                    },
                    align: "right",
                    anchor: "center",
                    textAlign: "left",
                    offset: 8,
                    font: {
                        family: "Lato",
                        size: 11,
                        weight: "bold"
                    },
                    color: function(a) {
                        if (a.datasetIndex === 0) {
                            return N_Data.USA.fontColor;
                        } else if (a.datasetIndex === 1) {
                            return N_Data.Brazil.fontColor;
                        } else if (a.datasetIndex === 2) {
                            return N_Data.Russia.fontColor;
                        } else if (a.datasetIndex === 3) {
                            return N_Data.UK.fontColor;
                        } else if (a.datasetIndex === 4) {
                            return N_Data.Spain.fontColor;
                        } else if (a.datasetIndex === 5) {
                            return N_Data.Italy.fontColor;
                        } else if (a.datasetIndex === 6) {
                            return N_Data.India.fontColor;
                        } else if (a.datasetIndex === 7) {
                            return N_Data.Germany.fontColor;
                        } else if (a.datasetIndex === 8) {
                            return N_Data.Peru.fontColor;
                        } else if (a.datasetIndex === 9) {
                            return N_Data.Turkey.fontColor;
                        } else if (a.datasetIndex === 10) {
                            return N_Data.Iran.fontColor;
                        } else if (a.datasetIndex === 11) {
                            return N_Data.France.fontColor;
                        }
                    },
                    formatter: function(a, b) {
                        return a.toLocaleString();
                    }
                }
            }
        }
    });
}

var DP_data = {
    date: ["3.27", "3.28", "3.29", "3.30", "3.31", "4.1", "4.2"],
    oversea: ["11", "3", "12", "12", "5", "2", "3"],
    region: ["68", "55", "27", "15", "30", "36", "46"]
};

function DPChart() {
    new Chart(document.getElementById("daily_patient"), {
        type: "bar", // bar 타입을 넣어야 Line Point가 중앙정렬 된다.
        data: {
            labels: DP_data.date,
            datasets: [
                {
                    data: DP_data.oversea,
                    label: "海外流入",
                    backgroundColor: "#e0217b",
                    borderWidth: 0,
                    categoryPercentage: 0.6,
                    barPercentage: 0.6,
                    fill: true
                },
                {
                    data: DP_data.region,
                    label: "各地发生",
                    backgroundColor: "#3571cc",
                    borderWidth: 0,
                    categoryPercentage: 0.6,
                    barPercentage: 0.6,
                    fill: true
                }
            ]
        },
        options: {
            maintainAspectRatio: false,
            title: { display: false },
            legend: { display: true, position: "bottom", labels: { usePointStyle: true, boxWidth: 8, fontFamily: "Noto Sans CJK KR", fontSize: 12 } },
            tooltips: {
                enabled: true,
                titleFontFamily: "'Lato'",
                bodyFontFamily: "'Lato'",
                bodyFontSize: 11,
                callbacks: {
                    label: function(a, b) {
                        return Number(a.value).toLocaleString();
                    }
                }
            },
            hover: { mode: null },
            layout: {
                padding: {
                    left: 0,
                    right: 0,
                    top: 20,
                    bottom: 0
                }
            },
            scales: {
                yAxes: [
                    {
                        stacked: true,
                        display: true,
                        ticks: {
                            beginAtZero: true,
                            fontColor: "#666",
                            fontSize: 10,
                            fontFamily: "'Lato'"
                        },
                        gridLines: {
                            display: true,
                            zeroLineColor: "#000"
                        }
                    }
                ],
                xAxes: [
                    {
                        stacked: true,
                        display: true,
                        ticks: {
                            fontColor: "#333",
                            fontSize: 10,
                            fontFamily: "'Lato'"
                        },
                        gridLines: {
                            display: false
                        }
                    }
                ]
            },
            plugins: {
                datalabels: {
                    display: true,
                    align: "end",
                    anchor: "end",
                    textAlign: "center",
                    offset: 0,
                    textStrokeColor: "rgba(255,255,255,0.72)",
                    textStrokeWidth: 3,
                    font: {
                        family: "Lato",
                        size: 11,
                        weight: "bold"
                    },
                    color: function(a) {
                        if (a.datasetIndex === 0) {
                            return "#e0217b";
                        } else if (a.datasetIndex === 1) {
                            return "#3571cc";
                        }
                    },
                    formatter: function(a, b) {
                        return a.toLocaleString();
                    }
                }
            }
        }
    });
}