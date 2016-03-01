---
layout: post
title: "Cara install PHP dengan json module"
date: 2016-03-01 13:39:52 -0500
comments: true
categories: Linux
---
Berikut adalah cara mudah untuk menginstall PHP serta module php-json, saya disini menggunakan OS Centos, berikut adalah caranya. <!-- more -->

{% codeblock lang:bash install php %}
yum install httpd
yum install php php-devel php-pecl-json
service restart httpd
{% endcodeblock %}