#import "@preview/cetz:0.4.2"
// = Cets Experiments

#cetz.canvas({
  import cetz.draw: *
  import calc: *

  let crescent(position, rotation, radius, thickness, angle, fill, stroke) = {
    let (x, y) = position
    let p1 = ((sin(rotation - angle/2) * radius) + x, (cos(rotation - angle/2) * radius) + y)
    let p2 = ((sin(rotation) * radius) + x, (cos(rotation) * radius) + y)
    let p3 = ((sin(rotation + angle/2) * radius) + x, (cos(rotation + angle/2) * radius) + y)
    let p4 = ((sin(rotation) * thickness * radius) + x, (cos(rotation) * thickness * radius) + y)

    merge-path(fill: fill, stroke: stroke, { 
      arc-through(p1, p2, p3); 
      arc-through(p3, p4, p1) 
    })
  }

  
  let icon1(position, scale, fill, stroke) = {
    let (x, y) = position
    compound-path(fill: fill, stroke: stroke, fill-rule: "even-odd",
    {
      crescent((0+x,0+y), 180deg, scale, 1.6, 240deg, fill, stroke)
      circle((0+x, 0.8*scale+y), radius:0.25 * scale, fill: fill, stroke: stroke)
      circle((0+x, -0.2*scale+y), radius: 0.6 * scale)
      circle((0+x, -0.14*scale+y), radius: 0.47 * scale)
    })
  }

  let icon2(position, scale, fill, stroke) = {
    let (x, y) = position
    compound-path(fill: fill, stroke: stroke, fill-rule: "even-odd",
    {
      crescent((0+x,0+y), 180deg, scale, 1.6, 240deg, fill, stroke)
      circle((0+x, -0.3*scale+y), radius:0.5 * scale, fill: fill, stroke: stroke)
      circle((0+x, 0.7*scale+y), radius:0.25 * scale, fill: fill, stroke: stroke)
    })
  }

  let icon3(position, scale, fill, stroke) = {
    let (x, y) = position
    compound-path(fill: fill, stroke: stroke, fill-rule: "even-odd",
    {
      crescent((0+x,0+y), 180deg, scale, 1.6, 240deg, fill, stroke)
      circle((0+x, -0.5*scale+y), radius:0.25 * scale, fill: fill, stroke: stroke)
      circle((0+x, 0.6*scale+y), radius: 0.6 * scale)
      circle((0+x, 0.55*scale+y), radius: 0.47 * scale)
    })
  }

  let icon4(position, scale, fill, stroke) = {
    let (x, y) = position
    compound-path(fill: fill, stroke: stroke, fill-rule: "even-odd",
    {
      crescent((0+x,0+y), 180deg, scale, 1.6, 240deg, fill, stroke)
      crescent((0.1*scale+x,-0.4*scale+y), 320deg, 0.4* scale, 1.6, 320deg, fill, stroke)
      circle((0+x, 0.8*scale+y), radius:0.25 * scale, fill: fill, stroke: stroke)
      circle((0+x, 0.37*scale+y), radius:0.1 * scale, fill: fill, stroke: stroke)
    })
  }

  let icon5(position, scale, fill, stroke) = {
    let (x, y) = position
    compound-path(fill: fill, stroke: stroke, fill-rule: "even-odd",
    {
      circle((0+x, 0+y), radius:1.3*scale, fill: fill, stroke: stroke)
      circle((0+x, 0.2*scale+y), radius:0.9 * scale, fill: fill, stroke: stroke)
      circle((0+x, 0.45*scale+y), radius:0.4 * scale, fill: fill, stroke: stroke)
    })
  }

  let icon6(position, scale, fill, stroke) = {
    let (x, y) = position
    compound-path(fill: fill, stroke: stroke, fill-rule: "even-odd",
    {
      crescent((0+x,0+y), 180deg, scale, 1.6, 240deg, fill, stroke)
      crescent((0.15*scale+x,-0.25*scale+y), 270deg, 0.45* scale, 1.6, 320deg, fill, stroke)
      circle((0+x, 0.7*scale+y), radius:0.25 * scale, fill: fill, stroke: stroke)
    })
  }

  let icon7(position, scale, fill, stroke) = {
    let (x, y) = position
    compound-path(fill: fill, stroke: stroke, fill-rule: "even-odd",
    {
      crescent((0+x,0+y), 180deg, scale, 1.6, 240deg, fill, stroke)
      circle((0+x, 0+y), radius:0.8 * scale, fill: fill, stroke: stroke)
      circle((0+x, 0+y), radius:0.6 * scale, fill: fill, stroke: stroke)
      circle((0+x, 0+y), radius:0.2 * scale, fill: fill, stroke: stroke)
    })
  }

  let icon8(position, scale, fill, stroke) = {
    let (x, y) = position
    compound-path(fill: fill, stroke: stroke, fill-rule: "even-odd",
    {
      crescent((0+x,0+y), 180deg, scale, 1.6, 300deg, fill, stroke)
      circle((0+x, -0.5*scale+y), radius:0.06 * scale, fill: fill, stroke: stroke)
      circle((0+x, 0.2*scale+y), radius: 0.4 * scale)
      circle((0+x, 0.15*scale+y), radius: 0.28 * scale)
      circle((0+x, 0.9*scale+y), radius: 0.1 * scale)
    })
  }

  let icon9(position, scale, fill, stroke) = {
    let (x, y) = position
    compound-path(fill: fill, stroke: stroke, fill-rule: "even-odd",
    {
      crescent((0+x,0+y), 180deg, scale, 1.6, 300deg, fill, stroke)
      circle((0+x, 0.04*scale+y), radius:0.29 * scale, fill: fill, stroke: stroke)
      circle((0+x, 0*scale+y), radius: 0.4 * scale)
      circle((0+x, 0.8*scale+y), radius: 0.2 * scale)
      circle((0+x, 1.3*scale+y), radius: 0.15 * scale)
    })
  }

  icon1((0,10), 1.5, black, none)
  icon2((5,10), 1.5, black, none)
  icon3((10,10), 1.5, black, none)
  icon4((0,5), 1.5, black, none)
  icon5((5,5), 1.5, black, none)
  icon6((10,5), 1.5, black, none)
  icon7((0,0), 1.5, black, none)
  icon8((5,0), 1.5, black, none)
  icon9((10,0), 1.5, black, none)

})