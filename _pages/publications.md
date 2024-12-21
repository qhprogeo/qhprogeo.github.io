---
title: "Publications"
layout: single
permalink: /publications/
author_profile: true
---

-----
## Publications in English
{% assign publications = site.data.publications | sort: 'year' | reverse %}
{% assign grouped = publications | group_by: 'year' %}

{% for year in grouped %}
### {{ year.name }}
  {% for publication in year.items %}
  - {{ publication.authors }}, **{{ publication.title }}** <br> *{{ publication.journal }}* {% if publication.downloadLink %} &nbsp;&nbsp;[Download]({{ publication.downloadLink }}){% endif %} {% if publication.doiLink %} &nbsp;&nbsp;[DOI]({{ publication.doiLink }}){% endif %}
  {% endfor %}
{% endfor %}
