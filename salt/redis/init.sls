redis:
  file.managed:
    - name: /etc/init.d/redis
    - source: salt://redis/redis
	- user: root
	- group: root
	- mode: 755
	
	- name:/etc/redis.conf
	- source: salt://redis/redis.conf
	- mode: 644