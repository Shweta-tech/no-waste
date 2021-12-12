function drawxmr(data, box, w_type) {
  console.log(data,box,w_type)
    let sum = 0; 
data.forEach(obj => {
    for (let property in obj) {
        if(property == "")
        sum += obj[property];
    }
})
    data.sort((a, b) => new Date(a.coll_date) - new Date(b.coll_date))

var result = []
data.forEach(function(e) {
  if(!this[e.coll_date]) {
    this[e.coll_date] = {date: e.coll_date, total_waste: null, dry_waste: null, wet_waste: null, hazardous_waste: null, region: null}
    result.push(this[e.coll_date])
  }
  this[e.coll_date] = Object.assign(this[e.coll_date], e)
})
console.log(result,'trace2');
    // console.log(data);
  function unpack(rows, key) {
    return data.map(function (row) {  return row[key]; });
  }

  function unpack1(rows, key) {
    return data.map(function (row) { 
 return new Date(row[key]) });
  }
  
  var trace2 = {
    type: "scatter",
    mode: "lines+markers",
    name: w_type,
    x: unpack1(result, 'coll_date'),
    y: unpack(result, w_type),
    line: { color: '#32a89d' }
  }

  
var data1 = [trace2];
  var layout = {

    title: w_type,

    xaxis: {
      rangemode: 'tozero',
      autorange: true,
      linewidth: 2,
      ticks: 'outside',
      
      tick0: 0,
      tickcolor: '#000',
},
yaxis: {
rangemode: 'tozero',
// tickvals:tickVals,
//       ticktext: tickVals.map(function(val){ return numberWithCommas(val); }),
      title:w_type,
    //   type: 'date',
      linewidth: 2,
      ticks: 'outside',
      tick0: 0,
      nticks:4,
      tickcolor: '#000',
},
    height: 500,
    margin: {
      t: 20,
      b: 140,
      l: 80,
       r:50,
      pad: 0
    },
    showlegend: true,
    legend: {
      x: 0,
      y: 1.3, orientation: "h"
    },
    annotations:[]
  };

  var config = { responsive: true };
  Plotly.newPlot(box, data1,layout, { displayModeBar: false },config);
}