---
permalink: /orders/
layout: default
title: Task orders on the BPA
---
  {% assign sortedorders = (site.data.orders | sort: 'solicitation_date') | reverse %}
  {% assign open = site.data.orders | where:"state","posted"%}
  {% assign planning = site.data.orders | where:"state","planning"%}
  {% if open.size > 0 %}
  <h2>Posted for Bid</h2>
  <ol class="solicitations posted">
    {% for order in sortedorders %}
      {% if order.state == "posted" %}
        {% include solicitation.html %}
      {% endif %}
    {% endfor %}
  </ol>
  {% endif %}
  {% if planning.size > 0 %}
  <h2>Upcoming</h2>
  <ol class="solicitations planning">
  {% for order in sortedorders %}
    {% if order.state == "planning" %}
      {% include solicitation.html %}
    {% endif %}
  {% endfor %}
  </ol>
  {% endif %}
  <h2>Post-award development</h2>
  <ol class="solicitations awarded">
  {% for order in sortedorders %}
    {% if order.state == "awarded" %}
      {% include solicitation.html %}
    {% endif %}
  {% endfor %}
  </ol>
  <h2>Delivered</h2>
  <ol class="solicitations delivered">
  {% for order in sortedorders %}
    {% if order.state == "delivered" %}
      {% include solicitation.html %}
    {% endif %}
  {% endfor %}
  </ol>
</section>