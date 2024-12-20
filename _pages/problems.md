---
title: "Problems"
layout: single
author_profile: true
permalink: /problems/
pagination:
  enabled: true
  collection: posts
  category: problems
  per_page: 7
  permalink: '/_:num/'
---

<!-- {% for problem in site.categories.problems %}
<div class="problem-block">
  <div><b>{{ problem.title }}</b> <p>{{ problem.content }}<p></div>
  <div><a href="{{ problem.solution_link }}">Solution</a></div>
</div>
{% endfor %} -->

<style>
  table {
    width: 100%;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #ddd;
    padding: 8px;
  }
  th {
    text-align: left;
  }
</style>

<table style="overflow-x: initial;">
  <tr>
    <th>Problem</th>
    <th>Solution</th>
  </tr>
  {% for problem in paginator.posts %}
    <tr class="problem-block">
      <td><b>{{ problem.title }}</b> <p>{{ problem.content }}<p></td>
      <td><a href="{{ problem.solution_link }}">Solution</a></td>
    </tr>
  {% endfor %}
</table>
<!--
  {% for problem in paginator.posts %}
    <div class="problem-block">
      <b>{{ problem.title }}</b>
      <p>{{ problem.content }}<p>
      <a href="{{ problem.solution_link }}">Solution</a>
    </div>
  {% endfor %} -->

<!-- <div class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path }}">&laquo; Previous</a>
  {% endif %}

  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path }}">Next &raquo;</a>
  {% endif %}
</div> -->

{% include paginator.html %}
