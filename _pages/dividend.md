---
layout: page
title: 배당 주식
permalink: /dividend
comments: true
---
<div class="table-responsive-sm dividend">
  <table class="table">
    <tr>
      <th scope="col" class="align-middle">#</th>
      <th scope="col" class="align-middle">Symbol</th>
      <th scope="col" class="align-middle">Company</th>
      <th scope="col" class="align-middle">Dividend AllStar</th>
      <th scope="col" class="align-middle">Dividend Rate</th>
      <th scope="col" class="align-middle">Trailing 12 Month Dividend Yield</th>
      <th scope="col" class="align-middle">Dividend Yield 5 Year Average</th>
      <th scope="col" class="align-middle">Dividend Payout Ratio</th>
      <th scope="col" class="align-middle">Dividend Payout Ratio 5 yr Average</th>
      <th scope="col" class="align-middle">Consecutive Dividend Increases</th>
    </tr>
  <tbody>

{%- for dividend in site.data.dividends -%}  
    <tr>
      <td class="align-middle">{{ forloop.index }}</td>
      <td class="align-middle">{{ dividend.s }}</td>
      <td class="align-middle"><img src="{{ site.resources.cdn }}/symbol/svg/{{ dividend.s }}.svg" class="img-responsive center-block logo" onerror="this.src='/assets/images/failure.svg';"/> {{ dividend.c | replace: "Dividend Information", "" }}</td>
      <td class="align-middle">
        <div class="rating-holder">
            <div class="c-rating c-rating--regular" data-rating-value="{{ dividend["r"] }}">
              <button>1</button>
              <button>2</button>
              <button>3</button>
              <button>4</button>
              <button>5</button>
          </div>
      </div>
    </td>
    <td class="align-middle">{{ dividend["y"] }}</td>
    <td class="align-middle">{{ dividend["yr"] | replace: "Currency Mismatch", "-" }}</td>
    <td class="align-middle">{{ dividend["y5y"] | replace: "Currency Mismatch", "-" }}</td>
    <td class="align-middle">{{ dividend["pr"] | replace: "Currency Mismatch", "-" }}</td>
    <td class="align-middle">{{ dividend["pr5y"] | replace: "Currency Mismatch", "-" }}</td>
    <td class="align-middle">{{ dividend["i"] }}</td>
  </tr>
{%- endfor -%}
  </tbody>
  </table>
</div>
<script>
document.addEventListener("DOMContentLoaded", function(){  
  document.querySelectorAll("table.table img").forEach(function(elm) {
    if( elm.src.indexOf("failure.svg") > -1 ) {
      const symbol = elm.parentElement.parentElement.childNodes[3].innerText;
      //console.log(symbol);
      elm.src = "{{ site.resources.cdn }}/symbol/png//" + symbol + ".png";
    }
  });
});
  
</script>