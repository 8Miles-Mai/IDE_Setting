cat<<MENU
= = = = = = = = = = = = = = = sit = = = = = = = = = = = = = = =
1)MVO-86.52         2)soa_core-86.121        3)soa_order-172.31.80.254
4)SOA-86.121        5)like-86.65             6)hudson_86.23

= = = = = = = = = = = = = = = sta = = = = = = = = = = = = = = =
1)docker-86.227


= = = = = = = = = = = = = = = prd = = = = = = = = = = = = = = =
1)MVO-24.80         2)MVO-24.81              3)MVO-24.82
4)SOA-24.150        5)SOA-24.151
6)soa_core-24.94    7)soa_order-24.94
8)gmbatch-24.119

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
MENU
echo -n "Choose:"
read env num
case "$env" in
	sit) 
		case "$num" in
			1) exec ssh deploy@192.168.86.52
			;;
			2) exec ssh deploy@192.168.86.121
			;;
			3) exec ssh deploy@172.31.80.254
			;;
			4) exec ssh deploy@192.168.86.121
			;;
			5) exec ssh deploy@192.168.86.65
			;;
			6) exec ssh deploy@192.168.86.23
			;;
		esac
	;;
	prd)
		case "$num" in
			1) exec ssh deploy_ro@192.168.24.80
			;;
			2) exec ssh deploy_ro@192.168.24.81
			;;
			3) exec ssh deploy_ro@192.168.24.82
			;;
			4) exec ssh deploy_ro@192.168.24.150
			;;
			5) exec ssh deploy_ro@192.168.24.151
			;;
			6) exec ssh deploy@192.168.24.94
			;;
			7) exec ssh deploy@192.168.24.94
			;;
			8) exec ssh gmbatch@192.168.24.119
			;;
		esac
	;;
	sta)
		case "$num" in
			1) exec ssh gmuser@192.168.86.227
			;;
		esac
	;;
	exit)
		exec exit
	;;
esac
