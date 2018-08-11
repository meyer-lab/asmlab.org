---
layout: default
title: Lab Meeting Schedule
---

## Lab Meeting Schedule

Lab meetings are held roughly every other week and are open to everyone in the lab.

{% assign future_meet = site.data.meetings | sort: 'date' | where_exp:'item', "item.date > site.time" %}
{% assign past_meet =   site.data.meetings | sort: 'date' | reverse | where_exp:'item', "item.date < site.time" %}

<table>
  <tr><thead>
    <th>Date</th>
    <th style="text-align: center">Presenter</th>
    <th>Topic</th>
    <th>Room</th>
  </thead></tr>
  {% for meeting in future_meet %}
  <tr>
    <td style="text-align: center">{{meeting.date | date: "%b %-d, %Y %-I:%M %P"}}</td>
    <td style="text-align: center">{{meeting.presenter}}</td>
    <td>{{meeting.topic}}</td>
    <td>{{meeting.room}}</td>
  </tr>
  {% endfor %}
</table>


## Previous Lab Meetings

<table>
  <tr><thead>
    <th>Date</th>
    <th style="text-align: center">Presenter</th>
    <th>Topic</th>
  </thead></tr>
  {% for meeting in past_meet %}
  <tr>
    <td style="text-align: center">{{meeting.date | date: "%b %-d, %Y"}}</td>
    <td style="text-align: center">{{meeting.presenter}}</td>
    <td>{{meeting.topic}}</td>
  </tr>
  {% endfor %}
</table>
