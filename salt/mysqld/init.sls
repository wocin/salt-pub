mysqld:
  pkg.installed:
    - name: mysql-server
  service.running:
    - enable: True
	- reload: True
  file.managed:
    - name: /etc/my.cnf
	- source: salt://mysqld/my.cnf
	- user: mysql
	- group: mysql
	- mode: 644