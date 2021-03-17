Mở Configuration Tools -> SQL Server Config Manager
	( C:\Windows\SysWOW64 + search sqlserver )

SQL Server Network Config -> Protocols for SQLEXPRESS

Protocol: Enable

Bên phải: TCP/IP -> Tab IP Addresses -> IPAll-> 
			TCP Port:1433

Restart SQL Server Services: 
-> SQL Server Services -> SQL Server(SQLEXPRESS) -> Restart

** Mở SQL Server Management:
- Mở tài khoản sa: -> Security -> Logins -> sa
-> username: sa | password: 123456 -> tab status -> login -> enable

- Mở properties của \SQLEXPRESS -> Security -> Server authentication -> SQL ...

Restart \SQLEXPRESS

OK!!
