---
title: About
description: About simple-purple-theme
date: 2020-03-19
date-modified: 2020-05-23
---

This theme was created by me, Călin Rădoni, to be used for
[CalinRadoni.github.io](https://calinradoni.github.io/) and the docs of [my projects](https://github.com/CalinRadoni) hosted on [GitHub](https://github.com/).

{% if site.social-links %}
{% capture info-sameAs %}{% for item in site.social-links %}"{{ item.link }}"{% if forloop.last == false %}, {% endif %}{% endfor %}{% endcapture %}
{% endif %}
{% capture info-url %}{% link pages/about.md %}{% endcapture %}
{% include seo-ldjson-person.html
    name = "Călin Rădoni"
    image = "/assets/img/CalinRadoni.png"
    jobTitle = "Systems Engineer by day, ... by night"
    alumniOf = "Faculty of Automation and Computers from Politehnica University Timisoara"
    gender = "male"
    url = info-url
    sameAs = info-sameAs
    %}
