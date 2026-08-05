---
layout: page
title: 🧑‍🏫 Staff
nav_order: 2
description: Program leadership and faculty.
---

# Staff

Staff information is stored in the `_staffers` directory and rendered according to the layout file, `_layouts/staffer.html`.

{% assign staffers = site.staffers %}
{% if staffers.size == 0 %}
Not yet populated — add a file per person to `_staffers/` (see [Just the Class's docs](https://github.com/kevinlin1/just-the-class) for the front matter format).
{% else %}
{% for staffer in staffers %}
{{ staffer }}
{% endfor %}
{% endif %}
