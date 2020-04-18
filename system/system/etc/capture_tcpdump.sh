#!/system/bin/sh

now_date=`date +%Y-%m-%d_%H-%M-%S`

if [ ! -d /data/log/tcp_logs ]; then
    mkdir -p /data/log/tcp_logs/
    chmod 0766 /data/log/tcp_logs
    chown system:system /data/log/tcp_logs
fi

if [ -f /data/log/tcp_logs/capture_tcpdump.pcap ]; then
    chmod 0666 /data/log/tcp_logs/capture_tcpdump.pcap
fi
