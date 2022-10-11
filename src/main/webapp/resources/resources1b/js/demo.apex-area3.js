var colors = ["#fa6767"],
    dataColors = $("#basic-area3").data("colors"),


    options = {
        chart: {
            height: 130,
            width: 150,
            type: "area",
            zoom: { enabled: !1 }
        },
        dataLabels: { enabled: !1 },
        stroke: { width: 3, curve: "straight" },
        colors: colors = dataColors ? dataColors.split(",") : colors,
        series: [{
            name: "USD/KRW",
            data: [

                [13481784e5, 1285.00],
                [13484376e5, 1291.00],
                [1348524e6, 1297.00],
                [13486104e5, 1301.00],
                [13486968e5, 1295.00],
                [13487832e5, 1311.00],
                [13490424e5, 1314.00],
                [13491288e5, 1309.00],
                [13492152e5, 1315.00],
                [13493016e5, 1309.00],
                [1349388e6, 1312.00],
                [13496472e5, 1310.00],
                [13497336e5, 1320.00],
                [134982e7, 1317.00],
                [13499064e5, 1319.00],
                [13499928e5, 1330.00],
                [1350252e6, 1328.00],
                [13503384e5, 1346.00],
                [13504248e5, 1336.00],
                [13505112e5, 1340.00],
                [13505976e5, 1343.00],
                [13508568e5, 1349.00],
                [13509432e5, 1344.00],
                [13510296e5, 1358.00],
                [1351116e6, 1363.00],
                [13512024e5, 1386.00],
                [1351638e6, 1379.00],
                [13517244e5, 1383.00],
                [13518108e5, 1378.00],
                [135207e7, 1390.00],
                [13521564e5, 1394.00],
                [13522428e5, 1394.00],
                [13523292e5, 1402.00],
                [13524156e5, 1406.00],
                [13526748e5, 1418.00],
                [13527612e5, 1425.00],
                [13528476e5, 1427.23],
                [1352934e6, 1440.64],
                [13530204e5, 1439.65],
                [13532796e5, 1412.92]





            ],
        }],
        title: { text: "", align: "left" },
        subtitle: { text: "", align: "left" },
        labels: series.monthDataSeries1.dates,
        xaxis: { type: "datetime" },
        yaxis: { decimalsInFloat: Number, opposite: !0 },
        legend: { horizontalAlign: "left" },
        grid: { borderColor: "#f1f3fa" },
        responsive: [{ breakpoint: 600, options: { chart: { toolbar: { show: !1 } }, legend: { show: !1 } } }]
    },
    chart = new ApexCharts(document.querySelector("#basic-area3"), options),
    colors = (chart.render(), ["#727cf5", "#6c757d"]),
    dataColors = $("#spline-area").data("colors"),
    options = { chart: { height: 380, type: "area" }, dataLabels: { enabled: !1 }, stroke: { width: 3, curve: "smooth" }, colors: colors = dataColors ? dataColors.split(",") : colors, series: [{ name: "Series 1", data: [31, 40, 28, 51, 42, 109, 100] }, { name: "Series 2", data: [11, 32, 45, 32, 34, 52, 41] }], legend: { offsetY: 5 }, xaxis: { categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul"] }, tooltip: { fixed: { enabled: !1, position: "topRight" } }, grid: { borderColor: "#f1f3fa" } },
    colors = ((chart = new ApexCharts(document.querySelector("#spline-area"), options)).render(), $(document).ready(function() {
        function t(e) {
            var t = document.querySelectorAll("button");
            Array.prototype.forEach.call(t, function(e) { e.classList.remove("active") }), e.target.classList.add("active")
        }
        var e = ["#6c757d"],
            a = $("#area-chart-datetime").data("colors"),
            a = (a && (e = a.split(",")), {
                annotations: { yaxis: [{ y: 30, borderColor: "#999", label: { show: !0, text: "Support", style: { color: "#fff", background: "#00E396" } } }], xaxis: [{ x: new Date("14 Nov 2012").getTime(), borderColor: "#999", yAxisIndex: 0, label: { show: !0, text: "Rally", style: { color: "#fff", background: "#775DD0" } } }] },
                chart: { type: "area", height: 350 },
                stroke: { width: 3, curve: "smooth" },
                colors: e,
                dataLabels: { enabled: !1 },
                series: [{
                    data: [
                        [13273596e5, 30.95],
                        [1327446e6, 31.34],
                        [13275324e5, 31.18],
                        [13276188e5, 31.05],
                        [13618332e5, 38.59],
                        [13619196e5, 39.6]
                    ]
                }],
                markers: { size: 0, style: "hollow" },
                xaxis: { type: "datetime", min: new Date("01 Mar 2012").getTime(), tickAmount: 6 },
                tooltip: { x: { format: "dd MMM yyyy" } },
                fill: { type: "gradient", gradient: { shadeIntensity: 1, opacityFrom: .7, opacityTo: .9, stops: [0, 100] } }
            }),
            o = new ApexCharts(document.querySelector("#area-chart-datetime"), a);
        o.render();
        document.querySelector("#one_month").addEventListener("click", function(e) { t(e), o.updateOptions({ xaxis: { min: new Date("28 Jan 2013").getTime(), max: new Date("27 Feb 2013").getTime() } }) }), document.querySelector("#six_months").addEventListener("click", function(e) { t(e), o.updateOptions({ xaxis: { min: new Date("27 Sep 2012").getTime(), max: new Date("27 Feb 2013").getTime() } }) }), document.querySelector("#one_year").addEventListener("click", function(e) { t(e), o.updateOptions({ xaxis: { min: new Date("27 Feb 2012").getTime(), max: new Date("27 Feb 2013").getTime() } }) }), document.querySelector("#ytd").addEventListener("click", function(e) { t(e), o.updateOptions({ xaxis: { min: new Date("01 Jan 2013").getTime(), max: new Date("27 Feb 2013").getTime() } }) }), document.querySelector("#all").addEventListener("click", function(e) { t(e), o.updateOptions({ xaxis: { min: void 0, max: void 0 } }) }), document.querySelector("#ytd").addEventListener("click", function() {})
    }), ["#0acf97", "#ffbc00"]),
    dataColors = $("#area-chart-negative").data("colors"),
    options = { chart: { height: 380, type: "area" }, dataLabels: { enabled: !1 }, stroke: { width: 2, curve: "straight" }, colors: colors = dataColors ? dataColors.split(",") : colors, series: [{ name: "North", data: [{ x: 1996, y: 322 }, { x: 1997, y: 324 }, { x: 1998, y: 329 }, { x: 1999, y: 342 }, { x: 2e3, y: 348 }, { x: 2001, y: 334 }, { x: 2002, y: 325 }, { x: 2003, y: 316 }, { x: 2004, y: 318 }, { x: 2005, y: 330 }, { x: 2006, y: 355 }, { x: 2007, y: 366 }, { x: 2008, y: 337 }, { x: 2009, y: 352 }, { x: 2010, y: 377 }, { x: 2011, y: 383 }, { x: 2012, y: 344 }, { x: 2013, y: 366 }, { x: 2014, y: 389 }, { x: 2015, y: 334 }] }, { name: "South", data: [{ x: 1996, y: 162 }, { x: 1997, y: 90 }, { x: 1998, y: 50 }, { x: 1999, y: 77 }, { x: 2e3, y: 35 }, { x: 2001, y: -45 }, { x: 2002, y: -88 }, { x: 2003, y: -120 }, { x: 2004, y: -156 }, { x: 2005, y: -123 }, { x: 2006, y: -88 }, { x: 2007, y: -66 }, { x: 2008, y: -45 }, { x: 2009, y: -29 }, { x: 2010, y: -45 }, { x: 2011, y: -88 }, { x: 2012, y: -132 }, { x: 2013, y: -146 }, { x: 2014, y: -169 }, { x: 2015, y: -184 }] }], xaxis: { type: "datetime", axisBorder: { show: !1 }, axisTicks: { show: !1 } }, yaxis: { tickAmount: 4, floating: !1, labels: { style: { color: "#8e8da4" }, offsetY: -7, offsetX: 0 }, axisBorder: { show: !1 }, axisTicks: { show: !1 } }, fill: { opacity: .5, gradient: { enabled: !1 } }, tooltip: { x: { format: "yyyy" }, fixed: { enabled: !1, position: "topRight" } }, legend: { offsetY: 5 }, grid: { yaxis: { lines: { offsetX: -30 } }, padding: { left: 0, bottom: 10 }, borderColor: "#f1f3fa" } },
    colors = ((chart = new ApexCharts(document.querySelector("#area-chart-negative"), options)).render(), ["#FF7F00"]),
    dataColors = $("#area-chart-github2").data("colors"),
    optionsarea2 = { chart: { id: "chartyear", type: "area", height: 200, toolbar: { show: !1, autoSelected: "pan" } }, colors: colors = dataColors ? dataColors.split(",") : colors, stroke: { width: 0, curve: "smooth" }, dataLabels: { enabled: !1 }, fill: { opacity: 1, type: "solid" }, series: [{ name: "commits", data: githubdata.series }], yaxis: { tickAmount: 10, labels: { show: !1 } }, xaxis: { type: "datetime" } },
    chartarea2 = new ApexCharts(document.querySelector("#area-chart-github2"), optionsarea2),
    colors = (chartarea2.render(), ["#7BD39A"]),
    options = ((dataColors = $("#area-chart-github").data("colors")) && (colors = dataColors.split(",")), { chart: { height: 175, type: "area", toolbar: { autoSelected: "selection" }, brush: { enabled: !0, target: "chartyear" }, selection: { enabled: !0, xaxis: { min: new Date("05 Jan 2014").getTime(), max: new Date("04 Jan 2015").getTime() } } }, colors: colors, dataLabels: { enabled: !1 }, stroke: { width: 0, curve: "smooth" }, series: [{ name: "commits", data: githubdata.series }], fill: { opacity: 1, type: "solid" }, legend: { position: "top", horizontalAlign: "left" }, xaxis: { type: "datetime" } }),
    colors = ((chart = new ApexCharts(document.querySelector("#area-chart-github"), options)).render(), ["#727cf5", "#0acf97", "#e3eaef"]),
    dataColors = $("#stacked-area").data("colors"),
    options = { chart: { height: 422, type: "area", stacked: !0, events: { selection: function(e, t) { console.log(new Date(t.xaxis.min)) } } }, colors: colors = dataColors ? dataColors.split(",") : colors, dataLabels: { enabled: !1 }, stroke: { width: 2, curve: "smooth" }, series: [{ name: "South", data: generateDayWiseTimeSeries(new Date("11 Feb 2017").getTime(), 20, { min: 10, max: 60 }) }, { name: "North", data: generateDayWiseTimeSeries(new Date("11 Feb 2017").getTime(), 20, { min: 10, max: 20 }) }, { name: "Central", data: generateDayWiseTimeSeries(new Date("11 Feb 2017").getTime(), 20, { min: 10, max: 15 }) }], fill: { gradient: { enabled: !0, opacityFrom: .6, opacityTo: .8 } }, legend: { position: "top", horizontalAlign: "left" }, xaxis: { type: "datetime" }, grid: { row: { colors: ["transparent", "transparent"], opacity: .2 }, borderColor: "#f1f3fa" }, responsive: [{ breakpoint: 600, options: { chart: { toolbar: { show: !1 } } } }] };

function generateDayWiseTimeSeries(e, t, a) {
    for (var o = 0, r = []; o < t;) {
        var s = e,
            i = Math.floor(Math.random() * (a.max - a.min + 1)) + a.min;
        r.push([s, i]), e += 864e5, o++
    }
    return r
}(chart = new ApexCharts(document.querySelector("#stacked-area"), options)).render();


for (var ts1 = 13885344e5, ts2 = 13886208e5, ts3 = 13890528e5, dataSet = [
        [],
        [],
        []
    ], i = 0; i < 12; i++) {
    var innerArr = [ts1 += 864e5, dataSeries[2][i].value];
    dataSet[0].push(innerArr)
}
for (i = 0; i < 18; i++) {
    innerArr = [ts2 += 864e5, dataSeries[1][i].value];
    dataSet[1].push(innerArr)
}
for (i = 0; i < 12; i++) {
    innerArr = [ts3 += 864e5, dataSeries[0][i].value];
    dataSet[2].push(innerArr)
}
colors = ["#39afd1", "#fa5c7c", "#727cf5"], (dataColors = $("#area-timeSeries").data("colors")) && (colors = dataColors.split(",")), options = { chart: { type: "area", stacked: !1, height: 380, zoom: { enabled: !1 } }, plotOptions: { line: { curve: "smooth" } }, dataLabels: { enabled: !1 }, series: [{ name: "Product A", data: dataSet[0] }, { name: "Product B", data: dataSet[1] }, { name: "Product C", data: dataSet[2] }], colors: colors, markers: { size: 0, style: "full" }, stroke: { width: 3 }, fill: { gradient: { enabled: !0, shadeIntensity: 1, inverseColors: !1, opacityFrom: .45, opacityTo: .05, stops: [20, 100, 100, 100] } }, yaxis: { labels: { style: { color: "#8e8da4" }, offsetX: 0, formatter: function(e) { return (e / 1e6).toFixed(0) } }, axisBorder: { show: !1 }, axisTicks: { show: !1 } }, xaxis: { type: "datetime", tickAmount: 8, labels: { formatter: function(e) { return moment(new Date(e)).format("DD MMM YYYY") } } }, title: { text: "Irregular Data in Time Series", align: "left", offsetX: 0 }, tooltip: { shared: !0, y: { formatter: function(e) { return (e / 1e6).toFixed(0) + " points" } } }, legend: { position: "top", horizontalAlign: "center", offsetX: -10 }, grid: { row: { colors: ["transparent", "transparent"], opacity: .2 }, borderColor: "#f1f3fa" }, responsive: [{ breakpoint: 600, options: { chart: { toolbar: { show: !1 } } } }] }, (chart = new ApexCharts(document.querySelector("#area-timeSeries"), options)).render(), colors = ["#6c757d"], dataColors = $("#area-chart-nullvalues").data("colors"), options = { chart: { height: 380, type: "area", animations: { enabled: !1 }, zoom: { enabled: !1 } }, dataLabels: { enabled: !1 }, stroke: { curve: "straight" }, colors: colors = dataColors ? dataColors.split(",") : colors, series: [{ name: "Network", data: [{ x: "Dec 23 2017", y: null }, { x: "Dec 24 2017", y: 44 }, { x: "Dec 25 2017", y: 31 }, { x: "Dec 26 2017", y: 38 }, { x: "Dec 27 2017", y: null }, { x: "Dec 28 2017", y: 32 }, { x: "Dec 29 2017", y: 55 }, { x: "Dec 30 2017", y: 51 }, { x: "Dec 31 2017", y: 67 }, { x: "Jan 01 2018", y: 22 }, { x: "Jan 02 2018", y: 34 }, { x: "Jan 03 2018", y: null }, { x: "Jan 04 2018", y: null }, { x: "Jan 05 2018", y: 11 }, { x: "Jan 06 2018", y: 4 }, { x: "Jan 07 2018", y: 15 }, { x: "Jan 08 2018", y: null }, { x: "Jan 09 2018", y: 9 }, { x: "Jan 10 2018", y: 34 }, { x: "Jan 11 2018", y: null }, { x: "Jan 12 2018", y: null }, { x: "Jan 13 2018", y: 13 }, { x: "Jan 14 2018", y: null }] }], fill: { opacity: .8, gradient: { enabled: !1 }, pattern: { enabled: !0, style: ["verticalLines", "horizontalLines"], width: 5, depth: 6 } }, markers: { size: 5, hover: { size: 9 } }, title: { text: "Network Monitoring" }, tooltip: { intersect: !0, shared: !1 }, theme: { palette: "palette1" }, xaxis: { type: "datetime" }, yaxis: { title: { text: "Bytes Received" } }, grid: { row: { colors: ["transparent", "transparent"], opacity: .2 }, borderColor: "#f1f3fa" }, responsive: [{ breakpoint: 600, options: { chart: { toolbar: { show: !1 } } } }] };
(chart = new ApexCharts(document.querySelector("#area-chart-nullvalues"), options)).render();