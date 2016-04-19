---
permalink: /
layout: feed
title: Introduction and updates
---

<section class="solicitations">
  <h1>Upcoming solicitations</h1>
  <ol class="solicitations">
  {% for order in site.data.orders %}
    <li>
      <dl class="solicitation">
      {{order.Requesting_Agency}}
        <dt class="solicitation-id">ID</dt>
        <dd class="solicitation-id">{% if order.rfq_id %}#{{order.rfq_id}}{%else%}TBD{% endif %}</dd>
        <dt class="solicitation-title">Title</dt>
        <dd class="solicitation-title"><h1>{{order.title}}</h1></dd>
        <dt class="solicitation-agency">Agency</dt>
        <dd class="solicitation-agency">{{order.requesting_agency}}</dd>
        <dt class="solicitation-office">Office</dt>
        <dd class="solicitation-office">{{order.office}}</dd>
        <dt class="solicitation-date">Anticipated solicitation date</dt>
        <dd class="solicitation-date"><time datetime="{{order.solicitation_date}}}">{{order.solicitation_date | date: "%B %d, %Y" }}</time></dd>
        <dt class="solicitation-period-of-performance">Period of performance</dt>
        <dd class="solicitation-period-of-performance">{{order.period_of_performance}}</dd>
        {% if order.description %}
        <dt class="solicitation-description">Description</dt>
        <dd class="solicitation-description">
        <p>{{order.description}}</p>
        </dd>
        {% endif %}
        {% if order.repository %}
        <dt class="solicitation-repository">Repository</dt>
        <dd class="solicitation-repository"><a href="{{order.repository}}">GitHub</a></p>
        {% endif %}
        </dd>
      </dl>
    </li>
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
    <h2>Learn more as a </h2>
    <ul class="learn-more">
      <li class="learn-more-federal-agency"><a href="buyers/">Federal agency interested in buying services</a></li>
      <li class="learn-more-vendor"><a href="vendors/">Vendor</a></li>
    </ul>
    <h1>Get updates</h1>
    <ul>
      <li><a href="https://18f.gsa.gov/tags/agile-bpa/">Read 18F blog posts about the Agile BPA</a></li>
      <li><a href="https://eepurl.com/bJQHFr">Subscribe to the 18F acquisition news email list</a></li>
    </ul>
  </div>  
</aside>
