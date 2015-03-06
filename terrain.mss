#hillshade {
  ::0[zoom<=14],
  ::1[zoom=15],
  ::2[zoom=16],
  ::3[zoom>=17] {
    image-filters-inflate: true;
    comp-op: hard-light;
    [class='shadow'] {
      polygon-fill: rgba(0,0,0,0.075);
    }
    [class='highlight'] {
      polygon-fill: rgba(255,255,255,0.125);
    }
  }
  ::1 { image-filters: agg-stack-blur(2,2); }
  ::2 { image-filters: agg-stack-blur(4,4); }
  ::3 { image-filters: agg-stack-blur(8,8); }
}

#landcover {
  [zoom>=6] { polygon-opacity: 0.88; }
  [zoom>=7] { polygon-opacity: 0.76; }
  [zoom>=8] { polygon-opacity: 0.64; }
  [zoom>=9] { polygon-opacity: 0.52; }
  [zoom>=10] { polygon-opacity: 0.4; }
  [zoom>=11] { polygon-opacity: 0.28; }
  [zoom>=12] { polygon-opacity: 0.16; }
  [class='wood'] { polygon-fill: @wood; }
  [class='scrub'] { polygon-fill: mix(@wood,@crop,67%); }
  [class='grass'] { polygon-fill: mix(@wood,@crop,33%); }
  [class='crop'] { polygon-fill: @crop; }
  [class='snow'] { polygon-fill: #eff; }
}