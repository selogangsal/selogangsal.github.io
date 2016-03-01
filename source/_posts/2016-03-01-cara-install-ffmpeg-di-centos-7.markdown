---
layout: post
title: "Cara Install FFMPEG di Centos 7"
date: 2016-03-01 13:27:22 -0500
comments: true
categories: Linux
---
FFMPEG Berguna untuk convert file multimedia ke berbagai format yang kita ingginkan. di bawah adalah cara install FFMPEG di Centos 7
Menggunakan Repository dari nux-dekstop.

{% codeblock lang:bash Install rpm nux-dekstop %}
yum -y install epel-release && rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
{% endcodeblock %}

kemudian install FFMEG

{% codeblock lang:bash Install rpm nux-dekstop %}
yum install ffmpeg ffmpeg-devel
{% endcodeblock %}