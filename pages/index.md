---
permalink: /
layout: feed
title: Introduction and updates
---

<section class="solicitations">
  <h1>Posted for Bid</h1>
  <ol class="solicitations posted">
  {% for order in site.data.orders %}
    {% if order.state == "posted" %}
      {% include solicitation.html %}
    {% endif %}
  {% endfor %}
  </ol>
  <h1>Awarded</h1>
  <ol class="solicitations awarded">
  {% for order in site.data.orders %}
    {% if order.state == "awarded" %}
      {% include solicitation.html %}
    {% endif %}
  {% endfor %}
  </ol>
  <h1>Delivered</h1>
  <ol class="solicitations delivered">
  {% for order in site.data.orders %}
    {% if order.state == "delivered" %}
      {% include solicitation.html %}
    {% endif %}
  {% endfor %}
  </ol>
  <h1>Planning</h1>
  <ol class="solicitations planning">
  {% for order in site.data.orders %}
    {% if order.state == "planning" %}
      {% include solicitation.html %}
    {% endif %}
  {% endfor %}
  </ol>
</section>

<aside class="about page">
  <div class="wrapper">
    <h1>About</h1>
    <p>In keeping with its mission to transform the way the federal government builds and buys digital services, 18F set out to find a new way of procuring digital services: <a href="https://18f.gsa.gov/2015/01/08/creating-a-federal-marketplace-for-agile-delivery-services/">at the speed of agile development cycles</a>. That means ideally less than four weeks from solicitation to contract kickoff, and from there no more than three months to deliver a minimum viable product.</p>
    <p>18F partnered with the General Service Administration (GSA) <a href="https://www.gsa.gov/portal/content/105150">Office of Integrated Technology Services</a> to establish a <a href="http://www.gsa.gov/portal/content/199353">blanket purchase agreement (BPA)</a> featuring vendors specializing in agile delivery services (e.g., user-centered design, agile software development, DevOps). The <strong>Agile Delivery Services BPA (Agile BPA)</strong> represents an effort to align acquisition practices with agile delivery practices.</p>
    <p>The Agile BPA is different from most other traditional IT services contract vehicles. It uses <a href="https://18f.gsa.gov/2015/04/23/coming-soon-the-agile-delivery-services-soliciatation/">novel ways to select vendors</a>: the most important thing for us is the ability to ship high-quality working software. We plan to issue task orders &mdash; consistent with the <a href="https://playbook.cio.gov/techfar/">TechFAR</a> &mdash; that feature shorter time-frames, smaller dollar amounts, and user-centered design principles.</div>
    <p>We use an <strong>iterative and incremental</strong> approach to the use of agile procurement. This will allow us to focus on building the appropriate processes and tools, and help us scale over time.</p>
    <h1>Learn more as a </h1>
    <ul class="learn-more">
      <li class="learn-more-federal-agency"><a href="buyers/">Federal agency interested in buying services</a></li>
      <li class="learn-more-vendor"><a href="vendors/">Vendor</a></li>
    </ul>
    <h1>Read the Ordering Guide</h1>
    <ul>
      <li><a href="ordering-guide/">Read the Agile BPA Ordering Guide</a></li>
    </ul>
    <h1>Get updates</h1>
    <ul>
      <li><a href="https://18f.gsa.gov/tags/agile-bpa/">Read 18F blog posts about the Agile BPA</a></li>
      <li><a href="http://eepurl.com/bJQHFr">Subscribe to the 18F acquisition news email list</a></li>
    </ul>
  </div>  
</aside>
