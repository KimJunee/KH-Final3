dateList = [];
valueList = [];
e = new Date;
$.ajax({
    url: '/realfinal/stockprice/fin_kospiDetail/info',
    type: 'get',
    success: function(map) {
        dateList = map.date;
        valueList = map.value;
        console.log('AJAX 통신 성공!');
        console.log(dateList);
        ! function(a) {
            "use strict";

            function t() {}
            t.prototype.generateData =
                function() { for (var t = [], e = 0; e < 100; e++) t.push(5e3 + 1e5 * Math.random() + .8 * e * e * e); return t }, t.prototype.init = function() {
                    this.dayDummyData = this.generateData(), this.monthDummyData = this.generateData(), this.weekDummyData = this.generateData(), this.yearDummyData = this.generateData(),
                        this.dayBalanceData = [];
                    for (var t = 0; t < dateList.length; t++) {
                        var e = new Date;
                        this.dayBalanceData.push([dateList[t], valueList[t]])
                    }
                    this.initCurrencyBTC(), this.initCurrencyCNY(), this.initCurrencyETH(), this.initDayBalance(), this.initWeekBalance(), this.initMonthBalance(), this.initYearBalance()
                }, t.prototype.initCurrencyBTC = function() {
                    var t = ["#727cf5", "#0acf97", "#fa5c7c", "#ffbc00"],
                        e = a("#currency-btc-chart").data("colors"),
                        e = { chart: { type: "line", height: 60, sparkline: { enabled: !0 } }, series: [{ data: [25, 33, 28, 35, 30, 40] }], stroke: { width: 2, curve: "smooth" }, markers: { size: 0 }, colors: t = e ? e.split(",") : t, tooltip: { fixed: { enabled: !1 }, x: { show: !1 }, y: { title: { formatter: function(t) { return "" } } }, marker: { show: !1 } } };
                    new ApexCharts(document.querySelector("#currency-btc-chart"), e).render()
                }, t.prototype.initCurrencyCNY = function() {
                    var t = ["#727cf5", "#0acf97", "#fa5c7c", "#ffbc00"],
                        e = a("#currency-cny-chart").data("colors"),
                        e = { chart: { type: "bar", height: 60, sparkline: { enabled: !0 } }, plotOptions: { bar: { columnWidth: "60%" } }, colors: t = e ? e.split(",") : t, series: [{ data: [25, 44, 12, 36, 9, 54, 25, 66, 41, 89, 63] }], labels: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], xaxis: { crosshairs: { width: 1 } }, tooltip: { fixed: { enabled: !1 }, x: { show: !1 }, y: { title: { formatter: function(t) { return "" } } }, marker: { show: !1 } } };
                    new ApexCharts(document.querySelector("#currency-cny-chart"), e).render()
                }, t.prototype.initCurrencyETH = function() {
                    var t = ["#727cf5", "#0acf97", "#fa5c7c", "#ffbc00"],
                        e = a("#currency-eth-chart").data("colors"),
                        e = { chart: { type: "line", height: 60, sparkline: { enabled: !0 } }, series: [{ data: [25, 33, 28, 35, 30, 40] }], stroke: { width: 2, curve: "smooth" }, markers: { size: 0 }, colors: t = e ? e.split(",") : t, tooltip: { fixed: { enabled: !1 }, x: { show: !1 }, y: { title: { formatter: function(t) { return "" } } }, marker: { show: !1 } } };
                    new ApexCharts(document.querySelector("#currency-eth-chart"), e).render()
                }, t.prototype.initDayBalance = function() {
                    var t = ["#6c757d"],
                        e = a("#day-balance-chart").data("colors"),
                        e = { chart: { type: "area", height: 350, toolbar: { show: !1 } }, colors: t = e ? e.split(",") : t, dataLabels: { enabled: !1 }, stroke: { width: 1 }, series: [{ data: this.dayBalanceData }], markers: { size: 0, style: "hollow" }, xaxis: { type: "datetime", tickAmount: 6 }, yaxis: { labels: { formatter: function(t) { return "$" + t } } }, tooltip: { x: { format: "dd MMM yyyy" } }, fill: { type: "gradient", gradient: { shadeIntensity: 1, opacityFrom: .7, opacityTo: 0, stops: [0, 100] } } };
                    new ApexCharts(document.querySelector("#day-balance-chart"), e).render()
                }, a.DashboardWallet = new t, a.DashboardWallet.Constructor = t, a.DashboardWallet.init()
        }(window.jQuery);



    },
    error: function() {
        console.log('AJAX 통신 실패!');
    }
});