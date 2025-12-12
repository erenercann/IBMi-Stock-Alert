# IBMi-Stock-Alert
IBM i (AS/400) üzerinde çalışan, kritik stok seviyelerinin altına düşen ürünleri otomatik tespit edip e-posta ile uyarı gönderen basit ve etkili bir RPGLE programı.


Ne yapar?

* STOKDURUM dosyasındaki tüm ürünleri tarar.
* Mevcut stok miktarı, tanımlı kritik seviyenin altına düşen ürünleri bulur.
* Bulunan ürünleri “Ürün Adı (stok miktarı)” formatında birleştirir.
* Eğer kritik ürün varsa, QCMDEXC ile SNDSMTPEMM komutunu çalıştırarak belirlenen kişiye (xxx@xxx.com) anında e-posta gönderir.
* Hiç kritik ürün yoksa sessizce biter, gereksiz mail göndermez.

Özellikler

* Tamamen native RPGLE (ILE RPG) ile yazıldı, dış kütüphane gerektirmez.
* IBM i’nin kendi SMTP komutu (SNDSMTPEMM) ile mail gönderir.
* Kolayca özelleştirilebilir: alıcı mail, konu, kritik seviye alanı vs.
* Performanslı: tek geçişte tüm dosyayı okur, DSPLY yerine gerçek mail gönderir.

---------------------------------------------------------------------------------

What it does

* Scans the entire STOKDURUM file
* Finds products whose current stock falls below the defined critical level
* Builds a clear message listing the critical items as “Product Name (current stock)”
* If any critical items are found, it uses QCMDEXC to call SNDSMTPEMM and instantly emails the alert to the specified recipient(s)
* Stays silent when everything is fine — no unnecessary emails

Key Features

* 100% native ILE RPG — zero external dependencies
* Uses IBM i’s built-in SNDSMTPEMM command for email delivery
* Highly customizable (recipient, subject, field names, etc.)
* Fast: single-pass file read, production-ready

