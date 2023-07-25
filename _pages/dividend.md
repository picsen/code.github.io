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
{% assign dividends = site.data.dividends | sort: "Dividend AllStar™ Ranking" | reverse %}
{%- for dividend in dividends -%}  
    <tr>
      <td class="align-middle">{{ forloop.index }}</td>
      <td class="align-middle">{{ dividend.symbol }}</td>
      <td class="align-middle"><img src="{{ site.resources.cdn }}/symbol/svg/{{ dividend.symbol }}.svg" class="img-responsive center-block logo" onerror="this.src='{{ site.resources.cdn }}/symbol/png/{{ dividend.symbol }}.png'"/> {{ dividend.company | replace: "Dividend Information", "" }}</td>
      <td class="align-middle">
        <div class="rating-holder">
            <div class="c-rating c-rating--regular" data-rating-value="{{ dividend["Dividend AllStar™ Ranking"] }}">
              <button>1</button>
              <button>2</button>
              <button>3</button>
              <button>4</button>
              <button>5</button>
          </div>
      </div>
    </td>
    <td class="align-middle">{{ dividend["Dividend Rate"] }}</td>
    <td class="align-middle">{{ dividend["Trailing 12 Month Dividend Yield"] | replace: "Currency Mismatch", "-" }}</td>
    <td class="align-middle">{{ dividend["Dividend Yield 5 Year Average"] | replace: "Currency Mismatch", "-" }}</td>
    <td class="align-middle">{{ dividend["Dividend Payout Ratio"] | replace: "Currency Mismatch", "-" }}</td>
    <td class="align-middle">{{ dividend["Dividend Payout Ratio 5 yr Average"] | replace: "Currency Mismatch", "-" }}</td>
    <td class="align-middle">{{ dividend["Consecutive Dividend Increases"] }}</td> 
  </tr>
{%- endfor -%}
  </tbody>
  </table>
</div>