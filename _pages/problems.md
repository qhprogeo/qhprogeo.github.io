---
title: "Problems"
layout: single
author_profile: true
permalink: /problems/
pagination:
  enabled: true
  collection: problems
  per_page: 2
  permalink: '/problems/:num/'
---

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

<table>
  <tr>
    <th>Problem</th>
    <th>Solution</th>
  </tr>
  {% for problem in paginator.posts %}
    <tr class="problem-block">
      <td><b>{{ problem.problem_title }}</b> <p>{{ problem.content }}<p></td>
      <td><a href="{{ problem.solution_link }}">Solution</a></td>
    </tr>
  {% endfor %}

</table>

<!-- <div class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path }}">&laquo; Previous</a>
  {% endif %}

  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path }}">Next &raquo;</a>
  {% endif %}
</div> -->

{% include paginator.html %}
