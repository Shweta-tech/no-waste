let mergedData;
const svg = d3.select('svg');
const transitionDuration = 500;
const width = document.body.clientWidth/2;
const height = document.body.clientHeight/2;
console.log(width,height)
let active = d3.select(null);
svg.attr('width', width).attr('height', height)
const g = svg.append('g');
var mercator = d3 .geoMercator() .scale(1);
//const mercator = geoMercator().scale(30000).translate([width/2, height/2]).center([73,19.7]);
const pathGenerator = d3.geoPath().projection(mercator);

//Zoom
let zzoom = d3.zoom().scaleExtent([1, 10]).on("zoom", zoomed);
let Tooltipheader1 = d => "Region: ";
let Tooltipheader2 = d => "Waste: ";
let TooltipVal1 = d => d.properties.region;
let TooltipVal2 = d => ColorValue(d);
// let ColorValue = d => d.properties.tot;
function zoomed() {
    g.style("stroke-width", 1 / d3.event.transform.k + "px");
    g.attr("transform", d3.event.transform); // updated for d3 v4
  }
  let colors = [ "#00af50", "#fff000", "#ffc000", "#fe0000", "#8e0000", "rgb(169, 169, 176)"]
  let tooltip = d3.select("body")
  .append("div")
  .attr("class", "tooltip")
  .style("opacity", 0);

    let sampleCategoricalData = []
    var colorScale = d3.scaleOrdinal().domain([d3.min(sampleCategoricalData),d3.max(sampleCategoricalData)])
      .range( ["#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd", "#8c564b", "#e377c2", "#7f7f7f", "#bcbd22", "#17becf"]);
      let ColorValue = d => {
   if(w_type=='total_waste'){ 
    let sampleCategoricalData = [];
    sampleCategoricalData.push(d.properties.total_waste);
     return d.properties.total_waste}
   else if(w_type == 'dry_waste_before_segregation'){
    let sampleCategoricalData = [];
    sampleCategoricalData.push(d.properties.dry_waste_before_segregation);
    return d.properties.dry_waste_before_segregation}
   else if(w_type == 'wet_waste_before_segregation'){
    let sampleCategoricalData = [];
    sampleCategoricalData.push(d.properties.wet_waste_before_segregation);
    return d.properties.wet_waste_before_segregation}
   else if(w_type == 'hazardous_waste'){
    let sampleCategoricalData = [];
    sampleCategoricalData.push(d.properties.hazardous_waste);
    return d.properties.hazardous_waste}};
  //makemap
  let tooltipValue = (d) => {
    console.log(ColorValue(d),"val")
    let ttv = `
        ${Tooltipheader1(d)}  ${TooltipVal1(d)} <br>
        ${Tooltipheader2(d)}  ${TooltipVal2(d)} (${ColorValue(d)}) `;
    return ttv;
  }
  const onMouseOverPoly = d => {
    tooltip
      .transition()
      .duration(200)
      .style("opacity", 0.9);
    tooltip
      .html(tooltipValue(d))
      .style("left", d3.event.pageX + "px")
      .style("top", d3.event.pageY - 30 + "px");

  };
//selectmap
const selectMap = (geojson,location) => {
    console.log(geojson,'sel map json')
    var selection = [];
    geojson.forEach( sel =>{
    if (sel.properties.region == location){
    selection.push(sel);
    }
    });
    
    console.log(selection,'sel')
    return selection;
} 


  // const readGeoJSON = (filename) => {
  //   let a;
  // let json = d3.json(`${filename}`).then(json =>{
  //   a=  json.features;
  // })
  // console.log(a, 'a');
  // }
  
  // let features = readGeoJSON('cluster.json');
  // var scaleCenter = calculateScaleCenter(features.features);
  // mercator.scale(scaleCenter.scale) .center(scaleCenter.center) .translate([width / 2, height / 2]);
  
  
  function calculateScaleCenter(features) {
   var bbox_path = pathGenerator.bounds(features),
  scale = 0.95 / Math.max( (bbox_path[1][0] - bbox_path[0][0]) / width, (bbox_path[1][1] - bbox_path[0][1]) / height ); 
  var bbox_feature = d3.geoBounds(features), center = [ (bbox_feature[1][0] + bbox_feature[0][0]) / 2, ((bbox_feature[1][1] + bbox_feature[0][1]) / 2)]; 
  return { 'scale': scale, 'center': center }; }