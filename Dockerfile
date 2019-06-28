#Başlanılacak olan image
FROM ubuntu

#kendi ismimizi gireriz. Default format.
MAINTAINER Mehmet Babat <babat.mhmet@gmail.com>

#Command Buraya kadar olsaydı ubuntu image'ını direkt olarak build edebilirdik.

#Image'a ping eklemek için yapılacak işlemler.
#Ayrıca bu işlemler ubuntu image'ı ile koşulacak olan container içinde koşacak command'lerdir. Yani ubuntu'nun kendi command'leri"
#Belirttiğimiz image'ı update'leriz
RUN apt-get update 

# Ping için gerekli olan paket(ubuntu command'i içerisinde). -y vererek otomatik kabul command'i verilir. Eğer -y verilmez ise çalışma gerçekleşmez.
RUN apt-get install -y inetutils-ping 

#Buraya kadar değişiklik yapmazsak ubuntu default command'i şeklinde çıktı alırız.

#Default command'i değiştirmek istersek ENTRYPOINT ya da;
#8.8.8.8 burada google'ın DNS server'ını sonsuza kadar verecek. Bunu belirli bir sayıda vermesini istersek CMD ["ping",-c 5,"8.8.8.8"]  command'ini verebiliriz.
CMD ["ping","8.8.8.8"] 


#Ek bilgi olarak ENTRYPOINT de olsaydı orada da neyin çalıştırılacağı belirtilir.
#Ek bilgi olarak. COPY command'i ile de Local(image'ın koşturulduğu ya da build edilen)'den koşturmayı yapmayı sağlar"
