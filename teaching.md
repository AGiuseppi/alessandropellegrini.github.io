---
layout: default
title: Teaching
permalink: /teaching/
---

Office Hours
------------

Students office consulting is at Via Ariosto 25, room B120, according to the following schedule. Please note that if no student shows up at the beginning of the office hours, I might leave the office to carry out other tasks.

* Tuesday October 15, from 11.30 to 13.00
* Tuesday October 29, from 11.30 to 13.00

<span style="color: red; font-weight: bold;">
</span>


Courses
-------

{% for post in site.posts  %}

{% capture this-year %}{{ post.date | date: "%Y" }}{% endcapture %}
{% capture next-year %}{{ post.previous.date | date: "%Y" }}{% endcapture %}

{% if forloop.first %}
{{ this-year }}/{{ this-year | plus: 1 }}
---------------
{% endif %}

* [{{ post.title }}]({{ site.url }}/{{ post.url }})

{% if forloop.last %}
{% else %}
{% if this-year != next-year %}
{{ next-year }}/{{ next-year | plus: 1 }}
---------------
{% endif %}
{% endif %}
{% endfor %}
