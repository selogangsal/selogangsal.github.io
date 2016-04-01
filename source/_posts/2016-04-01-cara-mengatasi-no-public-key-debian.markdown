---
layout: post
title: "Cara Mengatasi No Public Key Debian"
date: 2016-04-01 02:00:49 -0400
comments: true
categories: Linux
---
Buat yang mau update paket debian apt-get update dan ternyata mengalami masalah "There is no public key available for the following key IDs:" <!-- more -->

{% codeblock lang:bash error apt-get update %}
root@at2:~# apt-get update
Get:1 http://ftp.debian.org wheezy Release.gpg [2373 B]
Get:2 http://ftp.debian.org wheezy Release [191 kB]
Get:3 http://ftp.debian.org wheezy/main i386 Packages [5858 kB]
Get:4 http://security.debian.org wheezy/updates Release.gpg [1554 B]
Get:5 http://security.debian.org wheezy/updates Release [102 kB]
Get:6 http://ftp.debian.org wheezy/contrib i386 Packages [42.3 kB]
Get:7 http://ftp.debian.org wheezy/non-free i386 Packages [77.5 kB]
Get:8 http://security.debian.org wheezy/updates/main i386 Packages [322 kB]
Get:9 http://ftp.debian.org wheezy/contrib Translation-en [34.8 kB]
Get:10 http://ftp.debian.org wheezy/main Translation-en [3846 kB]
Get:11 http://security.debian.org wheezy/updates/contrib i386 Packages [14 B]
Get:12 http://security.debian.org wheezy/updates/non-free i386 Packages [14 B]
Get:13 http://security.debian.org wheezy/updates/contrib Translation-en [523 B]
Get:14 http://security.debian.org wheezy/updates/main Translation-en [183 kB]
Get:15 http://ftp.debian.org wheezy/non-free Translation-en [66.1 kB]
Get:16 http://security.debian.org wheezy/updates/non-free Translation-en [14 B]
Fetched 10.7 MB in 11s (939 kB/s)
Reading package lists... Done
W: There is no public key available for the following key IDs:
7638D0442B90D010
W: There is no public key available for the following key IDs:
9D6D8F6BC857C906
{% endcodeblock %}

Untuk mengatasi ini caranya cukup mudah, berikut caranya.

{%codeblock lang:bash %}
apt-get install aptitude
aptitude install debian-keyring debian-archive-keyring
{% endcodeblock %}
