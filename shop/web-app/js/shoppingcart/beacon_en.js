if (!dmtrack) {
	var dmtrack = {}
}
dmtrack.send_head = document.location.protocol + "//";
dmtrack.MSG_Img;
dmtrack.profile_site = 1;
dmtrack.ver = 40;
dmtrack.err_url = dmtrack.send_head + "stat.china.alibaba.com/dw/error.html";
dmtrack.tracelog_url = dmtrack.send_head + "tracelog.www.alibaba.com/null.gif";
dmtrack.acookie_url = dmtrack.send_head + "acookie.alibaba.com/1.gif";
dmtrack.feedback_url = dmtrack.send_head
		+ "page.china.alibaba.com/shtml/static/forfeedbacklog.html";
dmtrack.beacon_url = dmtrack.send_head + "dmtracking2.alibaba.com/b.jpg";
dmtrack.beacon2_url = dmtrack.send_head + "dmtracking2.alibaba.com/c.jpg";
dmtrack.acookieSupport = true;
dmtrack.getCookieFromAcookie = false;
dmtrack.isgetApacheId = false;
dmtrack.isCheckLogin = false;
dmtrack.isChangePid = true;
dmtrack.SendMessage = function(f, b, e, a) {
	function h(x) {
		var r = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
		var t, v, k;
		var w, u, s;
		k = x.length;
		v = 0;
		t = "";
		while (v < k) {
			w = x.charCodeAt(v++) & 255;
			if (v == k) {
				t += r.charAt(w >> 2);
				t += r.charAt((w & 3) << 4);
				t += "==";
				break
			}
			u = x.charCodeAt(v++);
			if (v == k) {
				t += r.charAt(w >> 2);
				t += r.charAt(((w & 3) << 4) | ((u & 240) >> 4));
				t += r.charAt((u & 15) << 2);
				t += "=";
				break
			}
			s = x.charCodeAt(v++);
			t += r.charAt(w >> 2);
			t += r.charAt(((w & 3) << 4) | ((u & 240) >> 4));
			t += r.charAt(((u & 15) << 2) | ((s & 192) >> 6));
			t += r.charAt(s & 63)
		}
		return t
	}
	var n = "";
	var o = "";
	var p = new Date();
	var q = f.length;
	try {
		if (b) {
			for ( var j in b) {
				n += j.toString() + "=" + b[j].toString() + "&"
			}
			n = n.substring(0, n.length - 1)
		}
		n = h(n);
		if (e) {
			for ( var j in e) {
				o += j.toString() + "=" + e[j].toString() + "&"
			}
			o = o.substring(0, o.length - 1)
		}
		if (f.indexOf("?") == -1) {
			if (!n && o) {
				f += "?" + o + "&ver=" + dmtrack.ver + "&time=" + p.getTime()
			} else {
				if (!o && n) {
					f += "?" + n + "&ver=" + dmtrack.ver + "&time="
							+ p.getTime()
				} else {
					if (o && n) {
						f += "?" + n + "&" + o + "&ver=" + dmtrack.ver
								+ "&time=" + p.getTime()
					}
				}
			}
		} else {
			var m = f.split("?");
			if (!n && o) {
				if (!m[1]) {
					f = "" + m[0] + "?" + m[1] + o + "&ver=" + dmtrack.ver
							+ "&time=" + p.getTime()
				} else {
					f = "" + m[0] + "?" + m[1] + "&" + o + "&ver="
							+ dmtrack.ver + "&time=" + p.getTime()
				}
			} else {
				if (!o && n) {
					if (!m[1]) {
						f = "" + m[0] + "?" + n + m[1] + "&ver=" + dmtrack.ver
								+ "&time=" + p.getTime()
					} else {
						f = "" + m[0] + "?" + n + "&" + m[1] + "&ver="
								+ dmtrack.ver + "&time=" + p.getTime()
					}
				} else {
					if (o && n) {
						if (!m[1]) {
							f = "" + m[0] + "?" + n + m[1] + "&" + o + "&ver="
									+ dmtrack.ver + "&time=" + p.getTime()
						} else {
							f = "" + m[0] + "?" + n + "&" + m[1] + "&" + o
									+ "&ver=" + dmtrack.ver + "&time="
									+ p.getTime()
						}
					}
				}
			}
		}
		if (f.length == q) {
			if (f.indexOf("?") == -1) {
				f += "?ver=" + dmtrack.ver + "&time=" + p.getTime()
			} else {
				if (f.indexOf("?") == f.length - 1) {
					f += "ver=" + dmtrack.ver + "&time=" + p.getTime()
				} else {
					f += "&ver=" + dmtrack.ver + "&time=" + p.getTime()
				}
			}
		}
		if (a == "docwrite") {
			document.write("<img style='display:none' src = " + f + ">")
		} else {
			if (a == "newimg" || !a) {
				var l = new Image();
				l.onload = function() {
					l = null;
					delete l
				};
				if (dmtrack.send_head.indexOf("http") != -1
						&& dmtrack.send_url != "") {
					l.src = f
				}
			}
		}
	} catch (i) {
		var c = dmtrack.getErrInfo(i);
		var g = dmtrack.err_url + "?type=send&exception="
				+ encodeURIComponent(c.toString());
		if (a == "docwrite") {
			document.write("<img style='display:none' src = " + g + ">")
		} else {
			if (a == "newimg" || !a) {
				var l = new Image();
				l.onload = function() {
					l = null;
					delete l
				};
				l.src = g
			}
		}
	}
};
dmtrack.getRand = function() {
	var k;
	try {
		k = dmtrack_pageid
	} catch (g) {
		k = ""
	}
	if (!k) {
		k = "001"
	} else {
		var f = k.substring(0, 16), j = k.substring(16, 26);
		var a = /^[-+]?[0-9]+$/.test(j) ? parseInt(j) : j;
		k = f + a.toString(16)
	}
	var h = (new Date()).getTime();
	var b = [ k, h.toString(16) ].join("");
	for ( var c = 1; c < 10; c++) {
		var l = parseInt(Math.round(Math.random() * 10000000000)).toString(16);
		b += l
	}
	b = b.substr(0, 42);
	return b
};
String.prototype.Trim = function() {
	return this.replace(/(^\s*)|(\s*$)/g, "")
};
dmtrack.get_cookie = function(c) {
	var b = "(?:; )?" + c + "=([^;]*);?";
	var a = new RegExp(b);
	if (a.test(document.cookie)) {
		var e = decodeURIComponent(RegExp["$1"]);
		if (e.Trim().length > 0) {
			return e
		} else {
			return "-"
		}
	} else {
		return "-"
	}
};
dmtrack.set_cookie = function(g, h, b, c, a, f) {
	var e = g + "=" + encodeURIComponent(h);
	if (b) {
		e += "; expires=" + b.toGMTString()
	}
	if (c) {
		e += "; path=" + c
	}
	if (a) {
		e += "; domain=" + a
	}
	if (f) {
		e += "; secure"
	}
	document.cookie = e
};
dmtrack.del_cookie = function(f, a) {
	var e = document.domain, b = e.split("."), g = "";
	dmtrack.set_cookie(f, "", new Date(0), a);
	for ( var c = b.length - 1; c > 0; c--) {
		g = "." + b[c] + g;
		dmtrack.set_cookie(f, "", new Date(0), a, g)
	}
	g = "." + b[c] + g;
	dmtrack.set_cookie(f, "", new Date(0), a, g)
};
dmtrack.getDomainCookie = function(c, f) {
	c = c.replace(/\"/g, "");
	var e = dmtrack.get_cookie(f), b = c.split("|");
	if (b[0] && b[0] == "-") {
		b = []
	}
	b.push(f + "=" + e);
	var a = b.join("|");
	return a
};
dmtrack.tracking = function() {
	try {
		var s = document.referrer;
		try {
			s = "" == s ? opener.location : s;
			s = "" == s ? "-" : s
		} catch (r) {
			s = "-"
		}
		s = encodeURI(s);
		var a = "GET";
		var q = document.URL.indexOf("://");
		var g = document.URL.substr(q + 2);
		g = encodeURI(g);
		var h = dmtrack.get_cookie("ali_apache_track");
		if (dmtrack.getCookieFromAcookie) {
			h = dmtrack.getDomainCookie(h, "cna")
		}
		if (dmtrack.isgetApacheId) {
			h = dmtrack.getDomainCookie(h, "ali_apache_id")
		}
		var p = dmtrack.beacon_url;
		try {
			if (!dmtrack_c) {
				dmtrack_c = "{-}"
			}
		} catch (r) {
			dmtrack_c = "{-}"
		}
		if (dmtrack.isCheckLogin) {
			dmtrack._checkLogin()
		}
		dmtrack_c = dmtrack.addCookieC();
		dmtrack.redirect_c();
		if (dmtrack.isChangePid) {
			dmtrack.change_pid()
		}
		var f = dmtrack.uaMonitor(), k = f.extraBrowser, o = k.name
				+ k.ver.toFixed(1), c = f.system.name, l = window.screen.width
				+ "*" + window.screen.height, i = window.navigator.language
				|| window.navigator.browserLanguage, n = o + "|" + c + "|" + l
				+ "|" + i;
		dmtrack.SendMessage(p, {
			p : "{" + dmtrack.profile_site + "}",
			u : "{" + g + "}",
			m : "{" + a + "}",
			s : "{200}",
			r : "{" + s + "}",
			a : "{" + h + "}",
			b : "{-}",
			c : dmtrack_c
		}, {
			pageid : dmtrack_pageid,
			sys : n
		})
	} catch (m) {
		var b = dmtrack.getErrInfo(m);
		var j = dmtrack.err_url + "?type=dmtrack&exception="
				+ encodeURIComponent(b.toString());
		dmtrack.SendMessage(j)
	}
	dmtrack.isDmTracked = true
};
dmtrack.redirect_c = function() {
	var b = "aliBeacon_bcookie";
	var a = dmtrack.get_cookie(b);
	a = a.replace(/ali_resin_trace=/, "");
	if ("{-}" == dmtrack_c) {
		dmtrack_c = "{" + a + "}"
	} else {
		dmtrack_c = dmtrack_c.split("}");
		if ("-" == a) {
			dmtrack_c[1] = "}"
		} else {
			dmtrack_c[1] = "|";
			dmtrack_c.push(a);
			dmtrack_c.push("}")
		}
		dmtrack_c = dmtrack_c.join("")
	}
	dmtrack.del_cookie(b, "/")
};
dmtrack.change_pid = function() {
	var a = document.domain;
	if (-1 != a.indexOf("alibado.com")) {
		dmtrack.profile_site = 4
	}
	if (window.dmconf) {
		if (window.dmconf.pid) {
			dmtrack.profile_site = window.dmconf.pid
		}
	}
};
dmtrack.beacon_click = function(j, p, g) {
	try {
		var q = p;
		if (q == "-" || !q) {
			q = encodeURI(document.URL)
		}
		d = new Date();
		var n = j.indexOf("://");
		var e = j.substr(n + 2);
		var a = "GET";
		var f = dmtrack.get_cookie("ali_apache_track");
		var m = dmtrack.beacon2_url;
		var o = [];
		if (g) {
			for ( var l in g) {
				o.push(l + "=" + g[l])
			}
		}
		if (o.length == 0) {
			o.push("-")
		}
		dmtrack.SendMessage(m, {
			p : "{" + dmtrack.profile_site + "}",
			u : "{" + e + "}",
			m : "{" + a + "}",
			s : "{200}",
			r : "{" + q + "}",
			a : "{" + f + "}",
			b : "{-}",
			c : "{" + o.join("|") + "}"
		})
	} catch (k) {
		var b = dmtrack.getErrInfo(k);
		var h = dmtrack.err_url + "?type=beaconclick&exception="
				+ encodeURIComponent(b.toString());
		dmtrack.SendMessage(h)
	}
};
dmtrack.tracelog = function(c) {
	var b = dmtrack.tracelog_url;
	var a = {
		tracelog : c
	};
	dmtrack.clickstat(b, a)
};
dmtrack.clickstat = function(c, f, k) {
	try {
		if (!window.dmtrack_pageid) {
			window.dmtrack_pageid = ""
		}
		if (typeof (f) == "string") {
			if ("?" == c.substring(c.length - 1, c.length)) {
				c = c.replace("?", "")
			}
			if ("?" == f.substring(0, 1)) {
				f = f.replace("?", "")
			}
			var n = f.split("&");
			var b = {};
			for ( var h = 0; h < n.length; h++) {
				var j = n[h].split("=");
				var m = j[0];
				var l = j[1];
				b[m] = l
			}
			b.st_page_id = window.dmtrack_pageid;
			dmtrack.SendMessage(c, {}, b)
		} else {
			if (typeof (f) == "object") {
				f.st_page_id = window.dmtrack_pageid;
				dmtrack.SendMessage(c, {}, f)
			}
		}
	} catch (g) {
		var a = dmtrack.getErrInfo(g);
		var e = dmtrack.err_url + "?type=clickstat&exception="
				+ encodeURIComponent(a.toString());
		dmtrack.SendMessage(e)
	}
};
dmtrack.flash_dmtracking = function(c, k) {
	try {
		dmtrack_pageid = dmtrack.getRand();
		var a = "GET";
		var f = dmtrack.get_cookie("ali_apache_track");
		var i = dmtrack.beacon_url;
		try {
			if (!dmtrack_c) {
				dmtrack_c = "{-}"
			}
		} catch (j) {
			dmtrack_c = "{-}"
		}
		dmtrack.SendMessage(i, {
			p : "{" + dmtrack.profile_site + "}",
			u : "{" + c + "}",
			m : "{" + a + "}",
			s : "{200}",
			r : "{" + k + "}",
			a : "{" + f + "}",
			b : "{-}",
			c : dmtrack_c
		}, {
			pageid : dmtrack_pageid,
			dmtrack_type : "xuanwangpu"
		})
	} catch (h) {
		var b = dmtrack.getErrInfo(h);
		var g = dmtrack.err_url + "?type=flash&exception="
				+ encodeURIComponent(b.toString());
		dmtrack.SendMessage(g)
	}
	dmtrack.isDmTracked = true
};
dmtrack.feedback = function(c) {
	var f = dmtrack.feedback_url;
	if (c.indexOf("?") > -1) {
		f = f + c
	} else {
		f = f + "?" + c
	}
	var a = "";
	try {
		a = document.cookie.match(/track_cookie[^;]*cosite=(\w+)/)[1]
	} catch (b) {
	}
	if (a.length > 0) {
		f = f + "&fromsite=" + a
	}
	dmtrack.beacon_click(f, "-");
	dmtrack.SendMessage(f, {}, {});
	return true
};
dmtrack.feedbackTraceLog = function(b, a) {
	return true
};
dmtrack.acookie = function() {
	function a(c) {
		return Math.floor(Math.random() * c) + 1
	}
	var b = escape(document.referrer);
	dmtrack.SendMessage(dmtrack.acookie_url, {}, {
		cache : a(9999),
		pre : b
	})
};
function sk_dmtracking() {
	if (dmtrack.isDmTracked) {
		return
	}
	dmtrack_pageid = dmtrack.getRand();
	try {
		if (dmtrack.acookieSupport) {
			dmtrack.acookie()
		}
	} catch (c) {
		var b = dmtrack.getErrInfo(c);
		var a = dmtrack.err_url + "?type=acookie&exception="
				+ encodeURIComponent(b.toString());
		dmtrack.SendMessage(a)
	}
	dmtrack.tracking()
}
dmtrack.getErrInfo = function(b) {
	var c = "";
	for ( var a in b) {
		c += a + "=" + b[a] + ";"
	}
	return c
};
dmtrack.isSupportCookie = function() {
	var c = "testIsSupportCookie";
	var b = document.domain;
	var a = "";
	dmtrack.set_cookie(c, "true", "", "/", b);
	a = dmtrack.get_cookie(c);
	if (a == "true") {
		dmtrack.del_cookie(c, "/");
		return true
	}
	return false
};
dmtrack._checkLogin = function() {
	if (!window.beacon) {
		window.beacon = {}
	}
	function a() {
		if (typeof window._last_loginid_info != "undefined") {
			return window._last_loginid_info
		}
		var b = function(c) {
			var f = "";
			try {
				f = document.cookie.match("(?:^|;)\\s*" + c + "=([^;]*)")
			} catch (g) {
			} finally {
				return f ? unescape(f[1]) : ""
			}
		};
		window._last_loginid_info = b("__cn_logon__")
				&& b("__cn_logon__") === "true" ? b("__last_loginid__") : false;
		return window._last_loginid_info
	}
	if (a() != false) {
		window.beacon.c_signed = 1
	} else {
		window.beacon.c_signed = 0
	}
};
dmtrack.addCookieC = function() {
	var c = dmtrack_c.substring(1, dmtrack_c.length - 1);
	var a = [];
	if (c != "-") {
		a = c.split("|")
	}
	for ( var b in window.beacon) {
		a.push(b + "=" + window.beacon[b])
	}
	a = a.length == 0 ? "-" : a.join("|");
	return "{" + a + "}"
};
dmtrack.uaMonitor = function() {
	var m = {
		trident : 0,
		webkit : 0,
		gecko : 0,
		presto : 0,
		khtml : 0,
		name : "other",
		ver : null
	}, g = {
		ie : 0,
		firefox : 0,
		chrome : 0,
		safari : 0,
		opera : 0,
		konq : 0,
		name : "other",
		ver : null
	}, i = {
		name : "",
		ver : null
	}, a = {
		win : false,
		mac : false,
		x11 : false,
		name : "other"
	}, c = "other", b = navigator.userAgent, e = navigator.platform, h, j, f = function(
			n) {
		var o = 0;
		return parseFloat(n.replace(/\./g, function() {
			return (o++ === 0) ? "." : ""
		}))
	};
	if (window.opera) {
		m.ver = g.ver = f(window.opera.version());
		m.presto = g.opera = parseFloat(m.ver);
		m.name = "presto";
		g.name = "opera"
	} else {
		if (/AppleWebKit\/(\S+)/.test(b)) {
			m.ver = f(RegExp["$1"]);
			m.webkit = m.ver;
			m.name = "webkit";
			if (/Chrome\/(\S+)/.test(b)) {
				g.ver = f(RegExp["$1"]);
				g.chrome = g.ver;
				g.name = "chrome"
			} else {
				if (/Version\/(\S+)/.test(b)) {
					g.ver = f(RegExp["$1"]);
					g.safari = g.ver;
					g.name = "safari"
				} else {
					var l = 1;
					if (m.webkit < 100) {
						l = 1
					} else {
						if (m.webkit < 312) {
							l = 1.2
						} else {
							if (m.webkit < 412) {
								l = 1.3
							} else {
								l = 2
							}
						}
					}
					g.safari = g.ver = l;
					g.name = "safari"
				}
			}
		} else {
			if (/KHTML\/(\S+)/.test(b) || /Konqueror\/([^;]+)/.test(b)) {
				m.ver = g.ver = f(RegExp["$1"]);
				m.khtml = g.konq = m.ver;
				m.name = "khtml";
				g.name = "konq"
			} else {
				if (/rv:([^\)]+)\) Gecko\/\d{8}/.test(b)) {
					m.ver = f(RegExp["$1"]);
					m.gecko = m.ver;
					m.name = "gecko";
					if (/Firefox\/(\S+)/.test(b)) {
						g.ver = f(RegExp["$1"]);
						g.firefox = g.ver;
						g.name = "firefox"
					}
				} else {
					if (/MSIE ([^;]+)/.test(b)) {
						m.ver = g.ver = f(RegExp["$1"]);
						m.trident = g.ie = m.ver;
						m.name = "trident";
						g.name = "ie"
					}
				}
			}
		}
	}
	i.name = g.name;
	i.ver = g.ver;
	if (h = b.match(/360SE/)) {
		i.name = "se360";
		i.ver = 3
	} else {
		if ((h = b.match(/Maxthon/)) && (j = window.external)) {
			i.name = "maxthon";
			try {
				i.ver = f(j.max_version)
			} catch (k) {
				i.ver = 0.1
			}
		} else {
			if (h = b.match(/TencentTraveler\s([\d.]*)/)) {
				i.name = "tt";
				i.ver = f(h[1]) || 0.1
			} else {
				if (h = b.match(/TheWorld/)) {
					i.name = "theworld";
					i.ver = 3
				} else {
					if (h = b.match(/SE\s([\d.]*)/)) {
						i.name = "sougou";
						i.ver = f(h[1]) || 0.1
					}
				}
			}
		}
	}
	a.win = e.indexOf("Win") == 0;
	a.mac = e.indexOf("Mac") == 0;
	a.x11 = (e == "X11") || (e.indexOf("Linux") == 0);
	if (a.win) {
		if (/Win(?:dows )?([^do]{2})\s?(\d+\.\d+)?/.test(b)) {
			if (RegExp["$1"] == "NT") {
				switch (RegExp["$2"]) {
				case "5.1":
					a.win = "XP";
					break;
				case "6.1":
					a.win = "7";
					break;
				case "5.0":
					a.win = "2000";
					break;
				case "6.0":
					a.win = "Vista";
					break;
				default:
					a.win = "NT";
					break
				}
			} else {
				if (RegExp["$1"] == "9x") {
					a.win = "ME"
				} else {
					a.win = RegExp["$1"]
				}
			}
		}
		a.name = "windows" + a.win
	}
	if (a.mac) {
		a.name = "mac"
	}
	if (a.x11) {
		a.name = "x11"
	}
	if (a.win == "CE") {
		c = "windows mobile"
	} else {
		if (/ Mobile\//.test(b)) {
			c = "apple"
		} else {
			if ((h = b.match(/NokiaN[^\/]*|Android \d\.\d|webOS\/\d\.\d/))) {
				c = h[0].toLowerCase()
			}
		}
	}
	return {
		engine : m,
		browser : g,
		extraBrowser : i,
		system : a,
		mobile : c
	}
};
