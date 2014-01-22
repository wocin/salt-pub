nginx:
  file.managed:
    - name: /etc/init.d/nginx
    - source: salt://nginx/nginx
	- user: nginx
	- group: nginx
	- mode: 755
	
	- name: /etc/nginx.conf
	- source: salt://nginx/nginx.conf
	- user: nginx
	- group: nginx
	- mode: 644
  pkg.installed:
    - name: nginx
  service.running:
    - enable: True
	- reload: True