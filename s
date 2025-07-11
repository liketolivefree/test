{
  "log": {
    "level": "info",
    "output": "box.log"
  },
  "dns": {
    "servers": [
      {
        "tag": "local-dns",
        "address": "local",
        "detour": "direct"
      },
      {
        "tag": "test-dns",
        "address": "https://146.112.41.2/dns-query",
        "detour": "direct"
      },
      {
        "tag": "direct-dns",
        "address": "https://8.8.8.8/dns-query"
      },
      {
        "tag": "remote-dns",
        "address": "https://8.8.8.8/dns-query"
      },
      {
        "tag": "final-dns",
        "address": "https://1.1.1.1/dns-query"
      }
    ],
    "rules": [
      {
        "domain_suffix": "jsdelivr.net",
        "server": "local-dns"
      },
      {
        "outbound": "any",
        "server": "test-dns"
      },
      {
        "domain_suffix": [
          "msftncsi.com",
          "windowsupdate.com",
          "mi.com",
          "miui.com",
          "miui.net",
          "xiaomi.com",
          "xiaomi.net",
          "mi-img.com",
          "miman.io"
        ],
        "action": "reject"
      },
      {
        "domain_suffix": ".ir",
        "server": "direct-dns"
      },
      {
        "rule_set": "xal",
        "server": "direct-dns"
      },
      {
        "rule_set": "oki",
        "server": "remote-dns"
      }
    ],
    "final": "final-dns",
    "strategy": "prefer_ipv4"
  },
  "inbounds": [
    {
      "type": "tun",
      "tag": "tun-in",
      "interface_name": "tun0",
      "mtu": 9000,
      "address": "172.19.0.1/30",
      "auto_route": true,
      "strict_route": true,
      "stack": "system",
      "platform": {
        "http_proxy": {
          "enabled": true,
          "server": "127.0.0.1",
          "server_port": 7890
        }
      }
    },
    {
      "type": "mixed",
      "tag": "mixed-in",
      "listen": "127.0.0.1",
      "listen_port": 7891
    }
  ],
  "outbounds": [
    {
      "type": "selector",
      "tag": "qqoli",
      "outbounds": [
        "mmobi",
        "b3",
        "a2",
        "b2",
        "a8",
        "b7",
        "q_1175",
        "b8",
        "q_25",
        "q_4",
        "b6",
        "a5",
        "q_21",
        "a4",
        "q_24",
        "q_16",
        "b4",
        "a3",
        "q_6373",
        "a1",
        "q_5260",
        "a9",
        "q_5307",
        "q_2156",
        "q_20‌",
        "q_2229"
      ],
      "default": "mmobi"
    },
    {
      "type": "urltest",
      "tag": "mmobi",
      "outbounds": [
        "b3",
        "a2",
        "b2",
        "a8",
        "b7",
        "q_1175",
        "b8",
        "q_25",
        "q_4",
        "b6",
        "a5",
        "q_21",
        "a4",
        "q_24",
        "q_16",
        "b4",
        "a3",
        "q_6373",
        "a1",
        "q_5260",
        "a9",
        "q_5307",
        "q_2156",
        "q_20‌",
        "q_2229"
      ],
      "url": "https://www.gstatic.com/generate_204",
      "interval": "6m0s",
      "tolerance": 5
    },
    {
      "type": "direct",
      "tag": "direct"
    },
    {
      "type": "vless",
      "tag": "b3",
      "server": "time.cdarvph.ir",
      "server_port": 443,
      "uuid": "40504ce7-8af1-4e02-8419-0cdf29320987",
      "tls": {
        "enabled": true,
        "server_name": "time.cdarvph.ir",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        },
        "reality": {
          "enabled": true,
          "public_key": "CS0tA68oboFrg3zY18crE82JlOkeLpkI8hiFVjlSsQU",
          "short_id": "c5"
        }
      },
      "transport": {
        "type": "grpc"
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "a2",
      "server": "vpn_proxy_channel_vpn_proxy_channel.hohod.ir",
      "server_port": 443,
      "uuid": "33707040-edcf-4185-94e4-2a071315c602",
      "tls": {
        "enabled": true,
        "server_name": "vpn_proxy_channel_vpn_proxy_channel.hohod.ir",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        },
        "reality": {
          "enabled": true,
          "public_key": "GpgfsA-U8Y8M3LRcTfsaBViDtp2VlN5riSLLZ2kxEiQ",
          "short_id": "7def4dde"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "b2",
      "server": "104.18.26.90",
      "server_port": 443,
      "uuid": "80d1fe59-60f4-4272-a280-820e1ef0a754",
      "tls": {
        "enabled": true,
        "server_name": "pages.dev"
      },
      "transport": {
        "type": "ws",
        "path": "/Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray",
        "headers": {
          "Host": "tfs733.pages.dev"
        },
        "max_early_data": 2048,
        "early_data_header_name": "Sec-WebSocket-Protocol"
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "a8",
      "server": "198.62.62.4",
      "server_port": 443,
      "uuid": "d0298536-d670-4045-bbb1-ddd5ea68683e",
      "tls": {
        "enabled": true,
        "server_name": "azadnet-7py.pages.dev"
      },
      "transport": {
        "type": "ws",
        "path": "/",
        "headers": {
          "Host": "azadnet-7py.pages.dev"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "b7",
      "server": "ovh.zerooners.com",
      "server_port": 443,
      "uuid": "eef345bb-ec43-4936-9ba5-9467a99f6545",
      "tls": {
        "enabled": true,
        "server_name": "ovh.zerooners.com",
        "insecure": true
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_1175",
      "server": "62.60.244.252",
      "server_port": 25888,
      "uuid": "301d049f-26d9-15ba-a83c-b1d5111d4444",
      "flow": "xtls-rprx-vision",
      "tls": {
        "enabled": true,
        "server_name": "www.microsoft.com",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        },
        "reality": {
          "enabled": true,
          "public_key": "1wWJ_HJdLChMyEqb1agU0pQr26966K5SK4u7ehst-VQ",
          "short_id": "8c5f97c86a710a"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "b8",
      "server": "o2.sigmamessenger.com",
      "server_port": 443,
      "uuid": "c3e86d0c-bfe5-4bb5-a051-5e143df2024d",
      "tls": {
        "enabled": true,
        "server_name": "o2.sigmamessenger.com",
        "insecure": true
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_25",
      "server": "real-all2.sdcards.ir",
      "server_port": 8509,
      "uuid": "46677716-490d-4a51-8a68-c44090505da3",
      "tls": {
        "enabled": true,
        "server_name": "tgju.org",
        "utls": {
          "enabled": true,
          "fingerprint": "firefox"
        },
        "reality": {
          "enabled": true,
          "public_key": "LD--N4X5Fo6UKi8c6XIUGfFCuRWKmvLHk_bwacZVDD4",
          "short_id": "67ceba05200e42df"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_4",
      "server": "198.62.62.4",
      "server_port": 443,
      "uuid": "d0298536-d670-4045-bbb1-ddd5ea68683e",
      "tls": {
        "enabled": true,
        "server_name": "azadnet-7py.pages.dev"
      },
      "transport": {
        "type": "ws",
        "path": "/azadnet-7py.pages.dev/",
        "headers": {
          "Host": "azadnet-7py.pages.dev"
        },
        "max_early_data": 2560,
        "early_data_header_name": "Sec-WebSocket-Protocol"
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "b6",
      "server": "api.chandplus.com",
      "server_port": 443,
      "uuid": "01d68a9b-be48-4c7b-b4f9-71b29c4cfaca",
      "tls": {
        "enabled": true,
        "server_name": "api.chandplus.com",
        "insecure": true
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "a5",
      "server": "ipw.gfdv54cvghhgfhgj-njhgj64.info",
      "server_port": 8443,
      "uuid": "96a1b724-68d2-4f4d-ab25-38ecd83577bc",
      "tls": {
        "enabled": true,
        "server_name": "IyFpLkXk10.jOoLaJoOlA.OrG"
      },
      "transport": {
        "type": "ws",
        "path": "/",
        "headers": {
          "Host": "IyFpLkXk10.jOoLaJoOlA.OrG"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_21",
      "server": "ipw.gfdv54cvghhgfhgj-njhgj64.info",
      "server_port": 8443,
      "uuid": "96a1b724-68d2-4f4d-ab25-38ecd83577bc",
      "tls": {
        "enabled": true,
        "server_name": "IyFpLkXk10.jOoLaJoOlA.OrG"
      },
      "transport": {
        "type": "ws",
        "path": "/",
        "headers": {
          "Host": "IyFpLkXk10.jOoLaJoOlA.OrG"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "a4",
      "server": "104.16.53.11",
      "server_port": 443,
      "uuid": "80d1fe59-60f4-4272-a280-820e1ef0a754",
      "tls": {
        "enabled": true,
        "server_name": "pages.dev"
      },
      "transport": {
        "type": "ws",
        "path": "/Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray---Telegram-XV2ray",
        "headers": {
          "Host": "tfs733.pages.dev"
        },
        "max_early_data": 2048,
        "early_data_header_name": "Sec-WebSocket-Protocol"
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_24",
      "server": "ipw.gfdv54cvghhgfhgj-njhgj64.info",
      "server_port": 443,
      "uuid": "8938d63f-7dda-43be-9a1e-819adac28297",
      "tls": {
        "enabled": true,
        "server_name": "smiTs.joOjehtor.it.cOm"
      },
      "transport": {
        "type": "ws",
        "path": "/",
        "headers": {
          "Host": "smiTs.joOjehtor.it.cOm"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_16",
      "server": "all.4qwertyuiopasdfghjklzxcvbnmmnbvcxzlkjhgfdsapoiuytrewq1234567890.com",
      "server_port": 443,
      "uuid": "c4cd9656-81a7-4342-9c0f-959ad333acae",
      "tls": {
        "enabled": true,
        "server_name": "de2radin.4qwertyuiopasdfghjklzxcvbnmmnbvcxzlkjhgfdsapoiuytrewq1234567890.com"
      },
      "transport": {
        "type": "ws",
        "path": "/ws",
        "headers": {
          "Host": "de2radin.4qwertyuiopasdfghjklzxcvbnmmnbvcxzlkjhgfdsapoiuytrewq1234567890.com"
        },
        "max_early_data": 2560,
        "early_data_header_name": "Sec-WebSocket-Protocol"
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "b4",
      "server": "dedic.app-browser.org",
      "server_port": 443,
      "uuid": "8f82acbe-f328-471a-8000-fbea349e6ce0",
      "tls": {
        "enabled": true,
        "server_name": "dedic.app-browser.org",
        "insecure": true
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "a3",
      "server": "ipw.gfdv54cvghhgfhgj-njhgj64.info",
      "server_port": 2096,
      "uuid": "337bf72e-bb79-4d5f-be3f-7822eb77100c",
      "tls": {
        "enabled": true,
        "server_name": "Ft77Ta8Q1m.EmShAbKhObE.oRg"
      },
      "transport": {
        "type": "ws",
        "path": "/",
        "headers": {
          "Host": "Ft77Ta8Q1m.EmShAbKhObE.oRg"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_6373",
      "server": "185.236.232.136",
      "server_port": 1001,
      "uuid": "c7c922da-ab54-433c-8046-1f9bf9d95c23",
      "tls": {
        "enabled": true,
        "server_name": "telewebion.com",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        },
        "reality": {
          "enabled": true,
          "public_key": "8Gunn8hjWbit5yLtTPcvLph0u2ovHLsGoXX4IJS1EQ0",
          "short_id": "5fab0deb"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "a1",
      "server": "freeconfig.fergalvpnmod.com",
      "server_port": 32869,
      "uuid": "8b0f6f24-bae0-472e-bb0a-3d7c029cde88",
      "tls": {
        "enabled": true,
        "server_name": "sony.com",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        },
        "reality": {
          "enabled": true,
          "public_key": "qwAzEJ5EfDZeaER7xLQ1Lxecnej0uWi3dbIsxYZU820",
          "short_id": "0c63f4c7ea"
        }
      },
      "transport": {
        "type": "grpc",
        "service_name": "@FergalVpnMod"
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_5260",
      "server": "154.92.9.151",
      "server_port": 443,
      "uuid": "ec8a65ad-aafc-4095-9b8c-ea10890ca629",
      "tls": {
        "enabled": true,
        "server_name": "simorgh.hpcode.ir"
      },
      "transport": {
        "type": "ws",
        "path": "/Javid-SHAH-KingRezaPahlavi/",
        "headers": {
          "Host": "simorgh.hpcode.ir"
        },
        "max_early_data": 2560,
        "early_data_header_name": "Sec-WebSocket-Protocol"
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "a9",
      "server": "198.62.62.4",
      "server_port": 443,
      "uuid": "d0298536-d670-4045-bbb1-ddd5ea68683e",
      "tls": {
        "enabled": true,
        "server_name": "azadnet-7py.pages.dev"
      },
      "transport": {
        "type": "ws",
        "path": "/",
        "headers": {
          "Host": "azadnet-7py.pages.dev"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_5307",
      "server": "154.92.9.46",
      "server_port": 443,
      "uuid": "ec8a65ad-aafc-4095-9b8c-ea10890ca629",
      "tls": {
        "enabled": true,
        "server_name": "simorgh.hpcode.ir"
      },
      "transport": {
        "type": "ws",
        "path": "/Javid-SHAH-KingRezaPahlavi/?ed=@vpnserverrr_vpnserverrr_vpnserverrr",
        "headers": {
          "Host": "simorgh.hpcode.ir"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_2156",
      "server": "mar13t.rasmar1400.com",
      "server_port": 2080,
      "uuid": "bea34b73-3244-475b-b914-7bb80e1cda91",
      "tls": {
        "enabled": true,
        "server_name": "dash.cloudflare.com",
        "utls": {
          "enabled": true,
          "fingerprint": "chrome"
        },
        "reality": {
          "enabled": true,
          "public_key": "L3lJWdU7mHijSkNaNt-m29OYnKnHvHYRxg2Y8XXFdng",
          "short_id": "bf517367267685"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_20‌",
      "server": "ipw.gfdv54cvghhgfhgj-njhgj64.info",
      "server_port": 2096,
      "uuid": "24a4aa9b-b341-4717-9d4a-00d74c2b84e0",
      "tls": {
        "enabled": true,
        "server_name": "IwMtG3eIoM.vPbEtHoRvP002.iNfO"
      },
      "transport": {
        "type": "ws",
        "path": "/",
        "headers": {
          "Host": "IwMtG3eIoM.vPbEtHoRvP002.iNfO"
        }
      },
      "packet_encoding": "xudp"
    },
    {
      "type": "vless",
      "tag": "q_2229",
      "server": "newus-ceg5.555199.xyz",
      "server_port": 8443,
      "uuid": "31961d72-b3df-4f0b-84c3-c4575b2b142b",
      "flow": "xtls-rprx-vision",
      "tls": {
        "enabled": true,
        "server_name": "ssl.wsfog.co.uk"
      },
      "packet_encoding": "xudp"
    }
  ],
  "route": {
    "rules": [
      {
        "inbound": "tun-in",
        "action": "sniff",
        "timeout": "500ms"
      },
      {
        "inbound": "mixed-in",
        "action": "sniff",
        "timeout": "500ms"
      },
      {
        "inbound": "tun-in",
        "action": "resolve",
        "strategy": "prefer_ipv4"
      },
      {
        "inbound": "mixed-in",
        "action": "resolve",
        "strategy": "prefer_ipv4"
      },
      {
        "protocol": "dns",
        "action": "hijack-dns"
      },
      {
        "port": 53,
        "action": "hijack-dns"
      },
      {
        "protocol": "quic",
        "action": "reject"
      },
      {
        "protocol": "stun",
        "action": "reject"
      },
      {
        "ip_cidr": [
          "224.0.0.0/3",
          "10.10.34.0/24"
        ],
        "action": "reject"
      },
      {
        "type": "logical",
        "mode": "and",
        "rules": [
          {
            "network": "tcp"
          },
          {
            "port": 853
          }
        ],
        "action": "reject"
      },
      {
        "type": "logical",
        "mode": "and",
        "rules": [
          {
            "network": "udp"
          },
          {
            "port": 443
          }
        ],
        "action": "reject"
      },
      {
        "domain_suffix": [
          "msftncsi.com",
          "windowsupdate.com",
          "mi.com",
          "miui.com",
          "miui.net",
          "xiaomi.com",
          "xiaomi.net",
          "mi-img.com",
          "miman.io"
        ],
        "action": "reject"
      },
      {
        "rule_set": "wht",
        "outbound": "qqoli"
      },
      {
        "rule_set": "aff_me",
        "action": "reject"
      },
      {
        "rule_set": "yun_me",
        "action": "reject"
      },
      {
        "ip_is_private": true,
        "outbound": "direct"
      },
      {
        "domain_suffix": ".ir",
        "outbound": "direct"
      },
      {
        "rule_set": "xal",
        "outbound": "direct"
      },
      {
        "rule_set": "loo",
        "outbound": "direct"
      },
      {
        "rule_set": "oki",
        "outbound": "qqoli"
      },
      {
        "rule_set": "doki",
        "outbound": "qqoli"
      }
    ],
    "rule_set": [
      {
        "type": "remote",
        "tag": "wht",
        "url": "https://cdn.jsdelivr.net/gh/liketolivefree/kobabi@main/wht.srs",
        "download_detour": "direct"
      },
      {
        "type": "remote",
        "tag": "aff_me",
        "url": "https://cdn.jsdelivr.net/gh/liketolivefree/kobabi@main/aff_me.srs",
        "download_detour": "direct"
      },
      {
        "type": "remote",
        "tag": "yun_me",
        "url": "https://cdn.jsdelivr.net/gh/liketolivefree/kobabi@main/yun_me.srs",
        "download_detour": "direct"
      },
      {
        "type": "remote",
        "tag": "oki",
        "url": "https://cdn.jsdelivr.net/gh/liketolivefree/kobabi@main/oki.srs",
        "download_detour": "direct"
      },
      {
        "type": "remote",
        "tag": "doki",
        "url": "https://cdn.jsdelivr.net/gh/liketolivefree/kobabi@main/doki.srs",
        "download_detour": "direct"
      },
      {
        "type": "remote",
        "tag": "xal",
        "url": "https://cdn.jsdelivr.net/gh/liketolivefree/kobabi@main/xal.srs",
        "download_detour": "direct"
      },
      {
        "type": "remote",
        "tag": "loo",
        "url": "https://cdn.jsdelivr.net/gh/liketolivefree/kobabi@main/loo.srs",
        "download_detour": "direct"
      }
    ],
    "final": "qqoli",
    "auto_detect_interface": true,
    "override_android_vpn": true
  },
  "experimental": {
    "cache_file": {
      "enabled": true
    }
  }
}
