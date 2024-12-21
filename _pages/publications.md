---
title: "Publications"
layout: single
permalink: /publications/
author_profile: true
---

{% assign publications = site.data.publications | sort: 'year' | reverse %}
{% assign grouped = publications | group_by: 'year' %}

{% for year in grouped %}
### {{ year.name }}
  {% for publication in year.items %}
  - **{{ publication.title }}**
    _{{ publication.authors }}_
    *{{ publication.journal }}*
    [Download]({{ publication.downloadLink }}) | [DOI]({{ publication.doiLink }})
  {% endfor %}
{% endfor %}
