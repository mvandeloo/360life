
var width = 880,
    height = 880,
    radius = Math.min(width, height) / 2;

var x = d3.scale.linear()
    .range([0, 2 * Math.PI]);

var y = d3.scale.linear()
    .range([0, radius]);

var color = d3.scale.category20c();

var svg = d3.select("#sunburst").append("svg")
    .attr("width", width)
    .attr("height", height)
    .append("g")
    .attr("transform", "translate(" + width / 2 + "," + (height / 2) + ")");

var partition = d3.layout.partition()
    .value(function(d) { return 1; });

var arc = d3.svg.arc()
    .startAngle(function(d) { return Math.max(0, Math.min(2 * Math.PI, x(d.x))); })
    .endAngle(function(d) { return Math.max(0, Math.min(2 * Math.PI, x(d.x + d.dx))); })
    .innerRadius(function(d) { return 0; })
    .outerRadius(function(d) { return Math.max(0, y(d.size)/20); });

window.count = 1;

d3.json(window.location + ".json", function(error, root) {

  var path = svg.selectAll("path")
    .data(partition.nodes(root))
    .enter().append("path")
    .attr("d", arc)
    .attr("stroke-width",0.3)
    // , function(d) { window.count++; return (window.count % 2) * 2 }
    .attr("fill", function(d) { return color(d.name); })
    .attr("class", "wheel_arc")
    .on("click", click);

  var g = svg.selectAll("g")
    .data(partition.nodes(root))
    .enter().append("g");

  var text = g.append("text")
    .attr("x", function(d) { return x(d.x); })
    .attr("dx", "60") // margin
    .attr("dy", ".35em") // vertical-align
    .text(function(d) { return d.name; });



  function computeTextRotation(d) {
    var angle = x(d.x + d.dx / 2) - Math.PI / 2;
    return angle / Math.PI * 180;
  }
  // text.attr("transform", function(d) { return "rotate(" + computeTextRotation(d) + ")"; });

});


d3.select(self.frameElement).style("height", height + "px");

// Interpolate the scales!
function arcTween(d) {
  var xd = d3.interpolate(x.domain(), [d.x, d.x + d.dx]),
      yd = d3.interpolate(y.domain(), [d.y, 1]),
      yr = d3.interpolate(y.range(), [d.y ? 20 : 0, radius]);
  return function(d, i) {
    return i
        ? function(t) { return arc(d); }
        : function(t) { x.domain(xd(t)); y.domain(yd(t)).range(yr(t)); return arc(d); };
  };
}
