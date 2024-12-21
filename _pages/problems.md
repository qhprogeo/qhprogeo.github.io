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
  td img {
    max-width: 80%;
    max-height: 400px;
    /* border: 1px solid transparent; */
    &:hover {
      cursor: pointer;
      /* border: 1px dashed #ddd; */
    }
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

<script>
  document.addEventListener('DOMContentLoaded', function() {
    const images = document.querySelectorAll('.problem-block img');
    images.forEach(img => {
      img.addEventListener('click', function() {
        const modal = document.createElement('div');
        modal.style.position = 'fixed';
        modal.style.top = '0';
        modal.style.left = '0';
        modal.style.width = '100%';
        modal.style.height = '100%';
        modal.style.backgroundColor = 'rgba(0, 0, 0, 0.5)';
        modal.style.display = 'flex';
        modal.style.alignItems = 'center';
        modal.style.justifyContent = 'center';
        modal.style.zIndex = '1000';

        const wrapper = document.createElement('div');
        wrapper.style.backgroundColor = 'white';
        // wrapper.style.padding = '10px';
        wrapper.style.borderRadius = '5px';
        wrapper.style.display = 'inline-block';
        wrapper.style.maxWidth = '90%';
        wrapper.style.maxHeight = '90%';
        wrapper.style.boxSizing ='border-box';
        // wrapper.style.overflow ='auto';

        const modalImg = document.createElement('img');
        modalImg.src = img.src;
        modalImg.style.maxWidth = '90vw';
        modalImg.style.maxHeight = '90vh';
        modalImg.style.width = 'auto';
        modalImg.style.height = 'auto';

        wrapper.appendChild(modalImg);
        modal.appendChild(wrapper);
        document.body.appendChild(modal);    modal.addEventListener('click', function(event) {
          if (event.target === modal) {
            document.body.removeChild(modal);
          }
        });

        document.addEventListener('keydown', function(event) {
          if (event.key === 'Escape') {
            if (document.body.contains(modal)) {
              document.body.removeChild(modal);
            }
          }
        });
      });
    });
  });
</script>
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
