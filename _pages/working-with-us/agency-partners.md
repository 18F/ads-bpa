---
layout: default
title: Information for agency partners
---

Any federal agency may only obtain services through an assistend acquisition engagement with 18F.

The [Agile BPA](../) is 18F's contract vehicle to acquire development, design, and full-stack teams to help work on 18F-managed projects. This is part of 18F's efforts to increase our capacity to help agency partners do great work, through using agile processes to transform the way the federal government buys and builds digital services.

## How working with the Agile BPA is different from typical contract vehicles

### 18F is your partner during the process

When you purchase services via the Agile BPA as an agency partner, 18F will be part of the process, rather than your team working directly with a vendor.

After your initial intake discussions with 18F, there will be a few main steps for using the Agile BPA:

1. Execute an Interagency Agreement (IAA) between your agency and 18F.
2. 18F will conduct a project acquisition workshop.
3. 18F will acquire one or more Agile BPA vendors.
4. 18F will work with a point of contact from your agency to collaboratively manage the vendor's post-award delivery of the product.

### Smaller contracts

An important difference between the Agile BPA and most other traditional IT services contract vehicles is that we make the procurements themselves reflect agile development. We plan to issue task orders — consistent with the [TechFAR](https://playbook.cio.gov/techfar/) — that feature shorter time-frames, smaller dollar amounts, and user-centered design principles. In other words, Agile BPA purchases will tend to be much smaller and more modular than most contracts.

## How 18F hires vendors for the Agile BPA

Through the Agile BPA, 18F hires vendors with [labor categories](https://pages.18f.gov/agile-labor-categories/) ranging from Backend Web Developers to Visual Designers to Content Strategists. We use [novel ways to select vendors](https://18f.gsa.gov/2015/04/23/coming-soon-the-agile-delivery-services-soliciatation/): the most important thing for us is the ability to develop user-centered and high quailty working software. [More about how we work with vendors.](../vendors/)

## <a name="vendors"></a>Vendors on the Agile BPA

Full-stack pool three vendors:

{% for vendor in site.data.vendors.vendors %}
- {{vendor.name}}
{% endfor %}


## Learn more

Right now, we're managing inquiries the same as other prospective 18F projects via our intake team. Agencies should email us at [inquiries@18f.gov](mailto:inquiries@18f.gov) with information about their problem or project. As we learn more about how to work with other agencies on the BPA, we will refine the process.