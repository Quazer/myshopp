var globalImgServer = 'http://style.alibaba.com';
if (location.protocol === "https:") {
	globalImgServer = 'https://ipaystyle.alibaba.com';
};

if (!dmtrack) {
	var dmtrack = {}
}
dmtrack.send_head = document.location.protocol + "//";
dmtrack.MSG_Img;
dmtrack.profile_site = 5;
dmtrack.ver = 40;
dmtrack.err_url = dmtrack.send_head + "stat.china.alibaba.com/dw/error.html";
dmtrack.tracelog_url = dmtrack.send_head + "tracelog.www.alibaba.com/null.gif";
dmtrack.acookie_url = dmtrack.send_head + "acookie.aliexpress.com/1.gif";
dmtrack.feedback_url = dmtrack.send_head
		+ "page.china.alibaba.com/shtml/static/forfeedbacklog.html";
dmtrack.beacon_url = dmtrack.send_head + "dmtracking2.alibaba.com/b.jpg";
dmtrack.beacon2_url = dmtrack.send_head + "dmtracking2.alibaba.com/c.jpg";
dmtrack.acookieSupport = true;
dmtrack.getCookieFromAcookie = false;
dmtrack.isgetApacheId = true;
dmtrack.isCheckLogin = false;
dmtrack.isChangePid = true;
dmtrack.SendMessage = function(A, D, B, E) {
	function y(a) {
		var i = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
		var g, e, c;
		var b, f, h;
		c = a.length;
		e = 0;
		g = "";
		while (e < c) {
			b = a.charCodeAt(e++) & 255;
			if (e == c) {
				g += i.charAt(b >> 2);
				g += i.charAt((b & 3) << 4);
				g += "==";
				break
			}
			f = a.charCodeAt(e++);
			if (e == c) {
				g += i.charAt(b >> 2);
				g += i.charAt(((b & 3) << 4) | ((f & 240) >> 4));
				g += i.charAt((f & 15) << 2);
				g += "=";
				break
			}
			h = a.charCodeAt(e++);
			g += i.charAt(b >> 2);
			g += i.charAt(((b & 3) << 4) | ((f & 240) >> 4));
			g += i.charAt(((f & 15) << 2) | ((h & 192) >> 6));
			g += i.charAt(h & 63)
		}
		return g
	}
	var t = "";
	var s = "";
	var r = new Date();
	var k = A.length;
	try {
		if (D) {
			for ( var w in D) {
				t += w.toString() + "=" + D[w].toString() + "&"
			}
			t = t.substring(0, t.length - 1)
		}
		t = y(t);
		if (B) {
			for ( var w in B) {
				s += w.toString() + "=" + B[w].toString() + "&"
			}
			s = s.substring(0, s.length - 1)
		}
		if (A.indexOf("?") == -1) {
			if (!t && s) {
				A += "?" + s + "&ver=" + dmtrack.ver + "&time=" + r.getTime()
			} else {
				if (!s && t) {
					A += "?" + t + "&ver=" + dmtrack.ver + "&time="
							+ r.getTime()
				} else {
					if (s && t) {
						A += "?" + t + "&" + s + "&ver=" + dmtrack.ver
								+ "&time=" + r.getTime()
					}
				}
			}
		} else {
			var u = A.split("?");
			if (!t && s) {
				if (!u[1]) {
					A = "" + u[0] + "?" + u[1] + s + "&ver=" + dmtrack.ver
							+ "&time=" + r.getTime()
				} else {
					A = "" + u[0] + "?" + u[1] + "&" + s + "&ver="
							+ dmtrack.ver + "&time=" + r.getTime()
				}
			} else {
				if (!s && t) {
					if (!u[1]) {
						A = "" + u[0] + "?" + t + u[1] + "&ver=" + dmtrack.ver
								+ "&time=" + r.getTime()
					} else {
						A = "" + u[0] + "?" + t + "&" + u[1] + "&ver="
								+ dmtrack.ver + "&time=" + r.getTime()
					}
				} else {
					if (s && t) {
						if (!u[1]) {
							A = "" + u[0] + "?" + t + u[1] + "&" + s + "&ver="
									+ dmtrack.ver + "&time=" + r.getTime()
						} else {
							A = "" + u[0] + "?" + t + "&" + u[1] + "&" + s
									+ "&ver=" + dmtrack.ver + "&time="
									+ r.getTime()
						}
					}
				}
			}
		}
		if (A.length == k) {
			if (A.indexOf("?") == -1) {
				A += "?ver=" + dmtrack.ver + "&time=" + r.getTime()
			} else {
				if (A.indexOf("?") == A.length - 1) {
					A += "ver=" + dmtrack.ver + "&time=" + r.getTime()
				} else {
					A += "&ver=" + dmtrack.ver + "&time=" + r.getTime()
				}
			}
		}
		if (E == "docwrite") {
			document.write("<img style='display:none' src = " + A + ">")
		} else {
			if (E == "newimg" || !E) {
				var v = new Image();
				v.onload = function() {
					v = null;
					delete v
				};
				if (dmtrack.send_head.indexOf("http") != -1
						&& dmtrack.send_url != "") {
					v.src = A
				}
			}
		}
	} catch (x) {
		var C = dmtrack.getErrInfo(x);
		var z = dmtrack.err_url + "?type=send&exception="
				+ encodeURIComponent(C.toString());
		if (E == "docwrite") {
			document.write("<img style='display:none' src = " + z + ">")
		} else {
			if (E == "newimg" || !E) {
				var v = new Image();
				v.onload = function() {
					v = null;
					delete v
				};
				v.src = z
			}
		}
	}
};
dmtrack.getRand = function() {
	var i;
	try {
		i = dmtrack_pageid
	} catch (o) {
		i = ""
	}
	if (!i) {
		i = "001"
	} else {
		var p = i.substring(0, 16), m = i.substring(16, 26);
		var s = /^[-+]?[0-9]+$/.test(m) ? parseInt(m) : m;
		i = p + s.toString(16)
	}
	var n = (new Date()).getTime();
	var r = [ i, n.toString(16) ].join("");
	for ( var q = 1; q < 10; q++) {
		var e = parseInt(Math.round(Math.random() * 10000000000)).toString(16);
		r += e
	}
	r = r.substr(0, 42);
	return r
};
String.prototype.Trim = function() {
	return this.replace(/(^\s*)|(\s*$)/g, "")
};
dmtrack.get_cookie = function(i) {
	var f = "(?:; )?" + i + "=([^;]*);?";
	var g = new RegExp(f);
	if (g.test(document.cookie)) {
		var h = decodeURIComponent(RegExp["$1"]);
		if (h.Trim().length > 0) {
			return h
		} else {
			return "-"
		}
	} else {
		return "-"
	}
};
dmtrack.set_cookie = function(l, k, i, o, j, m) {
	var n = l + "=" + encodeURIComponent(k);
	if (i) {
		n += "; expires=" + i.toGMTString()
	}
	if (o) {
		n += "; path=" + o
	}
	if (j) {
		n += "; domain=" + j
	}
	if (m) {
		n += "; secure"
	}
	document.cookie = n
};
dmtrack.del_cookie = function(k, i) {
	var l = document.domain, h = l.split("."), j = "";
	dmtrack.set_cookie(k, "", new Date(0), i);
	for ( var m = h.length - 1; m > 0; m--) {
		j = "." + h[m] + j;
		dmtrack.set_cookie(k, "", new Date(0), i, j)
	}
	j = "." + h[m] + j;
	dmtrack.set_cookie(k, "", new Date(0), i, j)
};
dmtrack.getDomainCookie = function(k, i) {
	k = k.replace(/\"/g, "");
	var j = dmtrack.get_cookie(i), g = k.split("|");
	if (g[0] && g[0] == "-") {
		g = []
	}
	g.push(i + "=" + j);
	var h = g.join("|");
	return h
};
dmtrack.tracking = function() {
	try {
		var I = document.referrer;
		try {
			I = "" == I ? opener.location : I;
			I = "" == I ? "-" : I
		} catch (e) {
			I = "-"
		}
		I = encodeURI(I);
		var H = "GET";
		var t = document.URL.indexOf("://");
		var D = document.URL.substr(t + 2);
		D = encodeURI(D);
		var C = dmtrack.get_cookie("ali_apache_track");
		if (dmtrack.getCookieFromAcookie) {
			C = dmtrack.getDomainCookie(C, "cna")
		}
		if (dmtrack.isgetApacheId) {
			C = dmtrack.getDomainCookie(C, "ali_apache_id")
		}
		var u = dmtrack.beacon_url;
		try {
			if (!dmtrack_c) {
				dmtrack_c = "{-}"
			}
		} catch (e) {
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
		var E = dmtrack.uaMonitor(), z = E.extraBrowser, v = z.name
				+ z.ver.toFixed(1), F = E.system.name, y = window.screen.width
				+ "*" + window.screen.height, B = window.navigator.language
				|| window.navigator.browserLanguage, w = v + "|" + F + "|" + y
				+ "|" + B;
		dmtrack.SendMessage(u, {
			p : "{" + dmtrack.profile_site + "}",
			u : "{" + D + "}",
			m : "{" + H + "}",
			s : "{200}",
			r : "{" + I + "}",
			a : "{" + C + "}",
			b : "{-}",
			c : dmtrack_c
		}, {
			pageid : dmtrack_pageid,
			sys : w
		})
	} catch (x) {
		var G = dmtrack.getErrInfo(x);
		var A = dmtrack.err_url + "?type=dmtrack&exception="
				+ encodeURIComponent(G.toString());
		dmtrack.SendMessage(A)
	}
	dmtrack.isDmTracked = true
};
dmtrack.redirect_c = function() {
	var c = "aliBeacon_bcookie";
	var e = dmtrack.get_cookie(c);
	e = e.replace(/ali_resin_trace=/, "");
	if ("{-}" == dmtrack_c) {
		dmtrack_c = "{" + e + "}"
	} else {
		dmtrack_c = dmtrack_c.split("}");
		if ("-" == e) {
			dmtrack_c[1] = "}"
		} else {
			dmtrack_c[1] = "|";
			dmtrack_c.push(e);
			dmtrack_c.push("}")
		}
		dmtrack_c = dmtrack_c.join("")
	}
	dmtrack.del_cookie(c, "/")
};
dmtrack.change_pid = function() {
	var b = document.domain;
	if (-1 != b.indexOf("alibado.com")) {
		dmtrack.profile_site = 4
	}
	if (window.dmconf) {
		if (window.dmconf.pid) {
			dmtrack.profile_site = window.dmconf.pid
		}
	}
};
dmtrack.beacon_click = function(w, i, y) {
	try {
		var c = i;
		if (c == "-" || !c) {
			c = encodeURI(document.URL)
		}
		d = new Date();
		var s = w.indexOf("://");
		var A = w.substr(s + 2);
		var C = "GET";
		var z = dmtrack.get_cookie("ali_apache_track");
		var t = dmtrack.beacon2_url;
		var r = [];
		if (y) {
			for ( var u in y) {
				r.push(u + "=" + y[u])
			}
		}
		if (r.length == 0) {
			r.push("-")
		}
		dmtrack.SendMessage(t, {
			p : "{" + dmtrack.profile_site + "}",
			u : "{" + A + "}",
			m : "{" + C + "}",
			s : "{200}",
			r : "{" + c + "}",
			a : "{" + z + "}",
			b : "{-}",
			c : "{" + r.join("|") + "}"
		})
	} catch (v) {
		var B = dmtrack.getErrInfo(v);
		var x = dmtrack.err_url + "?type=beaconclick&exception="
				+ encodeURIComponent(B.toString());
		dmtrack.SendMessage(x)
	}
};
dmtrack.tracelog = function(g) {
	var e = dmtrack.tracelog_url;
	var f = {
		tracelog : g
	};
	dmtrack.clickstat(e, f)
};
dmtrack.clickstat = function(w, u, q) {
	try {
		if (!window.dmtrack_pageid) {
			window.dmtrack_pageid = ""
		}
		if (typeof (u) == "string") {
			if ("?" == w.substring(w.length - 1, w.length)) {
				w = w.replace("?", "")
			}
			if ("?" == u.substring(0, 1)) {
				u = u.replace("?", "")
			}
			var i = u.split("&");
			var x = {};
			for ( var s = 0; s < i.length; s++) {
				var r = i[s].split("=");
				var o = r[0];
				var p = r[1];
				x[o] = p
			}
			x.st_page_id = window.dmtrack_pageid;
			dmtrack.SendMessage(w, {}, x)
		} else {
			if (typeof (u) == "object") {
				u.st_page_id = window.dmtrack_pageid;
				dmtrack.SendMessage(w, {}, u)
			}
		}
	} catch (t) {
		var y = dmtrack.getErrInfo(t);
		var v = dmtrack.err_url + "?type=clickstat&exception="
				+ encodeURIComponent(y.toString());
		dmtrack.SendMessage(v)
	}
};
dmtrack.flash_dmtracking = function(q, e) {
	try {
		dmtrack_pageid = dmtrack.getRand();
		var s = "GET";
		var p = dmtrack.get_cookie("ali_apache_track");
		var m = dmtrack.beacon_url;
		try {
			if (!dmtrack_c) {
				dmtrack_c = "{-}"
			}
		} catch (l) {
			dmtrack_c = "{-}"
		}
		dmtrack.SendMessage(m, {
			p : "{" + dmtrack.profile_site + "}",
			u : "{" + q + "}",
			m : "{" + s + "}",
			s : "{200}",
			r : "{" + e + "}",
			a : "{" + p + "}",
			b : "{-}",
			c : dmtrack_c
		}, {
			pageid : dmtrack_pageid,
			dmtrack_type : "xuanwangpu"
		})
	} catch (n) {
		var r = dmtrack.getErrInfo(n);
		var o = dmtrack.err_url + "?type=flash&exception="
				+ encodeURIComponent(r.toString());
		dmtrack.SendMessage(o)
	}
	dmtrack.isDmTracked = true
};
dmtrack.feedback = function(i) {
	var h = dmtrack.feedback_url;
	if (i.indexOf("?") > -1) {
		h = h + i
	} else {
		h = h + "?" + i
	}
	var g = "";
	try {
		g = document.cookie.match(/track_cookie[^;]*cosite=(\w+)/)[1]
	} catch (e) {
	}
	if (g.length > 0) {
		h = h + "&fromsite=" + g
	}
	dmtrack.beacon_click(h, "-");
	dmtrack.SendMessage(h, {}, {});
	return true
};
dmtrack.feedbackTraceLog = function(c, e) {
	return true
};
dmtrack.acookie = function() {
	function e(a) {
		return Math.floor(Math.random() * a) + 1
	}
	var c = escape(document.referrer);
	dmtrack.SendMessage(dmtrack.acookie_url, {}, {
		cache : e(9999),
		pre : c
	})
};
function sk_dmtracking_core() {
	if (dmtrack.isDmTracked) {
		return
	}
	dmtrack_pageid = dmtrack.getRand();
	try {
		if (dmtrack.acookieSupport) {
			dmtrack.acookie()
		}
	} catch (a) {
		var c = dmtrack.getErrInfo(a);
		var b = dmtrack.err_url + "?type=acookie&exception="
				+ encodeURIComponent(c.toString());
		dmtrack.SendMessage(b)
	}
	dmtrack.tracking()
}
function sk_dmtracking() {
	if (document.webkitVisibilityState == "prerender") {
		document.addEventListener("webkitvisibilitychange", function() {
			sk_dmtracking_core()
		}, false)
	} else {
		sk_dmtracking_core()
	}
}
dmtrack.getErrInfo = function(e) {
	var g = "";
	for ( var f in e) {
		g += f + "=" + e[f] + ";"
	}
	return g
};
dmtrack.isSupportCookie = function() {
	var g = "testIsSupportCookie";
	var e = document.domain;
	var f = "";
	dmtrack.set_cookie(g, "true", "", "/", e);
	f = dmtrack.get_cookie(g);
	if (f == "true") {
		dmtrack.del_cookie(g, "/");
		return true
	}
	return false
};
dmtrack._checkLogin = function() {
	if (!window.beacon) {
		window.beacon = {}
	}
	function b() {
		if (typeof window._last_loginid_info != "undefined") {
			return window._last_loginid_info
		}
		var a = function(i) {
			var h = "";
			try {
				h = document.cookie.match("(?:^|;)\\s*" + i + "=([^;]*)")
			} catch (e) {
			} finally {
				return h ? unescape(h[1]) : ""
			}
		};
		window._last_loginid_info = a("__cn_logon__")
				&& a("__cn_logon__") === "true" ? a("__last_loginid__") : false;
		return window._last_loginid_info
	}
	if (b() != false) {
		window.beacon.c_signed = 1
	} else {
		window.beacon.c_signed = 0
	}
};
dmtrack.addCookieC = function() {
	var g = dmtrack_c.substring(1, dmtrack_c.length - 1);
	var f = [];
	if (g != "-") {
		f = g.split("|")
	}
	for ( var e in window.beacon) {
		f.push(e + "=" + window.beacon[e])
	}
	f = f.length == 0 ? "-" : f.join("|");
	return "{" + f + "}"
};
dmtrack.uaMonitor = function() {
	var n = {
		trident : 0,
		webkit : 0,
		gecko : 0,
		presto : 0,
		khtml : 0,
		name : "other",
		ver : null
	}, t = {
		ie : 0,
		firefox : 0,
		chrome : 0,
		safari : 0,
		opera : 0,
		konq : 0,
		name : "other",
		ver : null
	}, r = {
		name : "",
		ver : null
	}, y = {
		win : false,
		mac : false,
		x11 : false,
		name : "other"
	}, w = "other", x = navigator.userAgent, v = navigator.platform, s, q, u = function(
			b) {
		var a = 0;
		return parseFloat(b.replace(/\./g, function() {
			return (a++ === 0) ? "." : ""
		}))
	};
	if (window.opera) {
		n.ver = t.ver = u(window.opera.version());
		n.presto = t.opera = parseFloat(n.ver);
		n.name = "presto";
		t.name = "opera"
	} else {
		if (/AppleWebKit\/(\S+)/.test(x)) {
			n.ver = u(RegExp["$1"]);
			n.webkit = n.ver;
			n.name = "webkit";
			if (/Chrome\/(\S+)/.test(x)) {
				t.ver = u(RegExp["$1"]);
				t.chrome = t.ver;
				t.name = "chrome"
			} else {
				if (/Version\/(\S+)/.test(x)) {
					t.ver = u(RegExp["$1"]);
					t.safari = t.ver;
					t.name = "safari"
				} else {
					var o = 1;
					if (n.webkit < 100) {
						o = 1
					} else {
						if (n.webkit < 312) {
							o = 1.2
						} else {
							if (n.webkit < 412) {
								o = 1.3
							} else {
								o = 2
							}
						}
					}
					t.safari = t.ver = o;
					t.name = "safari"
				}
			}
		} else {
			if (/KHTML\/(\S+)/.test(x) || /Konqueror\/([^;]+)/.test(x)) {
				n.ver = t.ver = u(RegExp["$1"]);
				n.khtml = t.konq = n.ver;
				n.name = "khtml";
				t.name = "konq"
			} else {
				if (/rv:([^\)]+)\) Gecko\/\d{8}/.test(x)) {
					n.ver = u(RegExp["$1"]);
					n.gecko = n.ver;
					n.name = "gecko";
					if (/Firefox\/(\S+)/.test(x)) {
						t.ver = u(RegExp["$1"]);
						t.firefox = t.ver;
						t.name = "firefox"
					}
				} else {
					if (/MSIE ([^;]+)/.test(x)) {
						n.ver = t.ver = u(RegExp["$1"]);
						n.trident = t.ie = n.ver;
						n.name = "trident";
						t.name = "ie"
					}
				}
			}
		}
	}
	r.name = t.name;
	r.ver = t.ver;
	if (s = x.match(/360SE/)) {
		r.name = "se360";
		r.ver = 3
	} else {
		if ((s = x.match(/Maxthon/)) && (q = window.external)) {
			r.name = "maxthon";
			try {
				r.ver = u(q.max_version)
			} catch (p) {
				r.ver = 0.1
			}
		} else {
			if (s = x.match(/TencentTraveler\s([\d.]*)/)) {
				r.name = "tt";
				r.ver = u(s[1]) || 0.1
			} else {
				if (s = x.match(/TheWorld/)) {
					r.name = "theworld";
					r.ver = 3
				} else {
					if (s = x.match(/SE\s([\d.]*)/)) {
						r.name = "sougou";
						r.ver = u(s[1]) || 0.1
					}
				}
			}
		}
	}
	y.win = v.indexOf("Win") == 0;
	y.mac = v.indexOf("Mac") == 0;
	y.x11 = (v == "X11") || (v.indexOf("Linux") == 0);
	if (y.win) {
		if (/Win(?:dows )?([^do]{2})\s?(\d+\.\d+)?/.test(x)) {
			if (RegExp["$1"] == "NT") {
				switch (RegExp["$2"]) {
				case "5.1":
					y.win = "XP";
					break;
				case "6.1":
					y.win = "7";
					break;
				case "5.0":
					y.win = "2000";
					break;
				case "6.0":
					y.win = "Vista";
					break;
				default:
					y.win = "NT";
					break
				}
			} else {
				if (RegExp["$1"] == "9x") {
					y.win = "ME"
				} else {
					y.win = RegExp["$1"]
				}
			}
		}
		y.name = "windows" + y.win
	}
	if (y.mac) {
		y.name = "mac"
	}
	if (y.x11) {
		y.name = "x11"
	}
	if (y.win == "CE") {
		w = "windows mobile"
	} else {
		if (/ Mobile\//.test(x)) {
			w = "apple"
		} else {
			if ((s = x.match(/NokiaN[^\/]*|Android \d\.\d|webOS\/\d\.\d/))) {
				w = s[0].toLowerCase()
			}
		}
	}
	return {
		engine : n,
		browser : t,
		extraBrowser : r,
		system : y,
		mobile : w
	}
};
sk_dmtracking();
(function() {
	var aa = window, G = document, l = location, aB = true, k = false;
	var af = l.href;
	var x = "https:" == l.protocol;
	var aC = (x ? "https://" : "http://") + "stat.alibaba.com/";
	var j = k;
	var ax, aw, N;
	var ao;
	var r;
	var t = "0.0";
	var S = "::-plain-::";
	var ab;
	var Y = !!G.attachEvent;
	var Z = "attachEvent";
	var o = "addEventListener";
	var ai = Y ? Z : o;
	var n;
	var p;
	var s = k;
	var R = {};
	var av = k;
	var E;
	var ap;
	var U;
	var ac = "data-spm";
	var an = "data-spm-protocol";
	var aq;
	var g;
	var X = "data-spm-wangpu-module-id";
	var B = "data-spm-anchor-id";
	function aj(aF) {
		var aE, aI;
		try {
			aE = [].slice.call(aF);
			return aE
		} catch (aH) {
			aE = [];
			aI = aF.length;
			for ( var aG = 0; aG < aI; aG++) {
				aE.push(aF[aG])
			}
			return aE
		}
	}
	function F(aE, aF) {
		return aE && aE.getAttribute ? (aE.getAttribute(aF) || "") : ""
	}
	function z(aE, aH, aF) {
		if (aE && aE.setAttribute) {
			try {
				aE.setAttribute(aH, aF)
			} catch (aG) {
			}
		}
	}
	function Q(aE, aG) {
		if (aE && aE.removeAttribute) {
			try {
				aE.removeAttribute(aG)
			} catch (aF) {
				z(aE, aG, "")
			}
		}
	}
	function W(aF, aE) {
		return aF.indexOf(aE) == 0
	}
	function ay(aE) {
		return typeof aE == "string"
	}
	function e(aE) {
		return Object.prototype.toString.call(aE) === "[object Array]"
	}
	function az(aF, aE) {
		return aF.indexOf(aE) >= 0
	}
	function ar(aF, aE) {
		return aF.indexOf(aE) > -1
	}
	function A(aH, aE) {
		for ( var aG = 0, aF = aE.length; aG < aF; aG++) {
			if (ar(aH, aE[aG])) {
				return aB
			}
		}
		return k
	}
	function at(aE) {
		return ay(aE) ? aE.replace(/^\s+|\s+$/g, "") : ""
	}
	function y(aE) {
		return typeof aE == "undefined"
	}
	function f() {
		n = n || G.getElementsByTagName("head")[0];
		return p || (n ? (p = n.getElementsByTagName("meta")) : [])
	}
	function am() {
		var aI = f(), aG, aF, aH, aE;
		for (aG = 0, aF = aI.length; aG < aF; aG++) {
			aH = aI[aG];
			aE = F(aH, "name");
			if (aE == ac) {
				U = F(aH, an)
			}
		}
	}
	function H(aJ) {
		var aL = f(), aI, aG, aF, aK, aE, aH;
		if (aL) {
			for (aI = 0, aG = aL.length; aI < aG; aI++) {
				aK = aL[aI];
				aE = F(aK, "name");
				if (aE == aJ) {
					ao = F(aK, "content");
					if (ao.indexOf(":") >= 0) {
						aF = ao.split(":");
						U = aF[0] == "i" ? "i" : "u";
						ao = aF[1]
					}
					aH = F(aK, an);
					if (aH) {
						U = (aH == "i" ? "i" : "u")
					}
					r = W(ao, "110");
					N = (r ? t : ao);
					return aB
				}
			}
		}
		return k
	}
	function ae() {
		return Math.floor(Math.random() * 268435456).toString(16)
	}
	function v(aH) {
		var aE = [], aG, aF;
		for (aG in aH) {
			if (aH.hasOwnProperty(aG)) {
				aF = "" + aH[aG];
				aE.push(W(aG, S) ? aF : (aG + "=" + encodeURIComponent(aF)))
			}
		}
		return aE.join("&")
	}
	function ad(aF) {
		var aG = [], aI, aH, aJ, aE = aF.length;
		for (aJ = 0; aJ < aE; aJ++) {
			aI = aF[aJ][0];
			aH = aF[aJ][1];
			aG.push(W(aI, S) ? aH : (aI + "=" + encodeURIComponent(aH)))
		}
		return aG.join("&")
	}
	function V(aF) {
		var aE;
		try {
			aE = at(aF.getAttribute("href", 2))
		} catch (aG) {
		}
		return aE || ""
	}
	function M(aF, aG, aE) {
		aF[ai]((Y ? "on" : "") + aG, function(aI) {
			aI = aI || aa.event;
			var aH = aI.target || aI.srcElement;
			aE(aI, aH)
		}, k)
	}
	function q(aE) {
		var aF = aa.KISSY;
		if (aF) {
			aF.ready(aE)
		} else {
			if (aa.jQuery) {
				jQuery(G).ready(aE)
			} else {
				if (G.readyState === "complete") {
					aE()
				} else {
					M(aa, "load", aE)
				}
			}
		}
	}
	function J(aG, aI) {
		var aF = new Image(), aK = "_img_" + Math.random(), aH = aG
				.indexOf("?") == -1 ? "?" : "&", aJ, aE = aI ? (e(aI) ? ad(aI)
				: v(aI)) : "";
		aa[aK] = aF;
		aF.onload = aF.onerror = function() {
			aa[aK] = null
		};
		aF.src = aJ = aE ? (aG + aH + aE) : aG;
		aF = null;
		return aJ
	}
	function au() {
		if (!y(N)) {
			return N
		}
		if (aa._SPM_a && aa._SPM_b) {
			ax = aa._SPM_a.replace(/^{(\w+)}$/g, "$1");
			aw = aa._SPM_b.replace(/^{(\w+)}$/g, "$1");
			s = aB;
			N = ax + "." + aw;
			am();
			return N
		}
		var aG = G.getElementsByTagName("head")[0], aF;
		H(ac) || H("spm-id");
		N = N || t;
		if (!N) {
			return N
		}
		var aE = G.getElementsByTagName("body");
		var aH;
		aE = aE && aE.length ? aE[0] : null;
		if (aE) {
			aH = F(aE, ac);
			if (aH) {
				aF = N.split(".");
				N = aF[0] + "." + aH
			}
		}
		return N
	}
	function al(aI) {
		var aK = G.getElementsByTagName("*"), aF, aH, aG, aL, aJ, aE;
		for (aF = []; aI && aI.nodeType == 1; aI = aI.parentNode) {
			if (aI.hasAttribute("id")) {
				aE = aI.getAttribute("id");
				aL = 0;
				for (aH = 0; aH < aK.length; aH++) {
					aJ = aK[aH];
					if (aJ.hasAttribute("id") && aJ.id == aE) {
						aL++;
						break
					}
				}
				if (aL == 1) {
					aF.unshift('id("' + aE + '")');
					return aF.join("/")
				} else {
					aF.unshift(aI.localName.toLowerCase() + '[@id="' + aE
							+ '"]')
				}
			} else {
				for (aH = 1, aG = aI.previousSibling; aG; aG = aG.previousSibling) {
					if (aG.localName == aI.localName) {
						aH++
					}
				}
				aF.unshift(aI.localName.toLowerCase() + "[" + aH + "]")
			}
		}
		return aF.length ? "/" + aF.join("/") : null
	}
	function b(aE) {
		var aF = R[al(aE)];
		return aF ? aF.spmc : ""
	}
	function ak(aF) {
		var aM, aK, aI, aE, aL, aJ = [], aN, aH, aG;
		aM = aj(aF.getElementsByTagName("a"));
		aK = aj(aF.getElementsByTagName("area"));
		aE = aM.concat(aK);
		for (aH = 0, aG = aE.length; aH < aG; aH++) {
			aN = false;
			aL = aI = aE[aH];
			while (aL = aL.parentNode) {
				if (aL == aF) {
					break
				}
				if (F(aL, ac)) {
					aN = true;
					break
				}
			}
			if (!aN) {
				aJ.push(aI)
			}
		}
		return aJ
	}
	function D(aF, aG, aH) {
		var aN, aJ, aP, aE, aM, aS, aL, aK, aI, aR, aQ, aU, aO, aV, aT;
		if (F(aF, "data-spm-delay")) {
			aF.setAttribute("data-spm-delay", "");
			return
		}
		aG = aG || aF.getAttribute(ac) || "";
		if (!aG) {
			return
		}
		aN = ak(aF);
		aP = aG.split(".");
		aU = (g && W(aG, "110") && aP.length == 3);
		if (aU) {
			aO = aP[2];
			aV = aO.split("-");
			aP[2] = "w" + ((aV.length > 1) ? aV[0] : "0");
			aG = aP.join(".")
		}
		if (ay(aK = au()) && aK.match(/^[\w\-\*]+(\.[\w\-\*]+)?$/)) {
			if (!az(aG, ".")) {
				if (!az(aK, ".")) {
					aK += ".0"
				}
				aG = aK + "." + aG
			} else {
				if (!W(aG, aK)) {
					aE = aK.split(".");
					aP = aG.split(".");
					for (aR = 0, aI = aE.length; aR < aI; aR++) {
						aP[aR] = aE[aR]
					}
					aG = aP.join(".")
				}
			}
		}
		if (!aG.match || !aG.match(/^[\w\-\*]+\.[\w\-\*]+\.[\w\-\*]+$/)) {
			return
		}
		aT = parseInt(F(aF, "data-spm-max-idx")) || 0;
		for (aQ = 0, aM = aT, aI = aN.length; aQ < aI; aQ++) {
			aJ = aN[aQ];
			aS = V(aJ);
			if (!aS) {
				continue
			}
			if (aU) {
				aJ.setAttribute(X, aO)
			}
			if (aL = aJ.getAttribute(B)) {
				u(aJ, aL, aH);
				continue
			}
			aM++;
			aL = aG + "." + (aA(aJ) || aM);
			u(aJ, aL, aH);
			aJ.setAttribute(B, aL)
		}
		aF.setAttribute("data-spm-max-idx", aM)
	}
	function aD() {
		g = (E && ap);
		return g
	}
	function a(aG) {
		var aF = [ "mclick.simba.taobao.com", "click.simba.taobao.com",
				"click.tanx.com", "click.mz.simba.taobao.com",
				"click.tz.simba.taobao.com", "redirect.simba.taobao.com",
				"rdstat.tanx.com", "stat.simba.taobao.com",
				"s.click.taobao.com" ], aH, aE = aF.length;
		for (aH = 0; aH < aE; aH++) {
			if (aG.indexOf(aF[aH]) != -1) {
				return true
			}
		}
		return false
	}
	function ah(aE) {
		return aE ? (!!aE.match(/^[^\?]*\balipay\.(?:com|net)\b/i)) : k
	}
	function i(aE) {
		return aE ? (!!aE
				.match(/^[^\?]*\balipay\.(?:com|net)\/.*\?.*\bsign=.*/i)) : k
	}
	function K(aF) {
		var aE;
		while ((aF = aF.parentNode) && aF.tagName != "BODY") {
			aE = F(aF, an);
			if (aE) {
				return aE
			}
		}
		return ""
	}
	function P(aG, aM) {
		if (aG && /&?\bspm=[^&#]*/.test(aG)) {
			aG = aG.replace(/&?\bspm=[^&#]*/g, "").replace(/&{2,}/g, "&")
					.replace(/\?&/, "?").replace(/\?$/, "")
		}
		if (!aM) {
			return aG
		}
		var aN, aJ, aL, aK = "&", aH, aF, aE, aI;
		if (aG.indexOf("#") != -1) {
			aL = aG.split("#");
			aG = aL.shift();
			aJ = aL.join("#")
		}
		aH = aG.split("?");
		aF = aH.length - 1;
		aL = aH[0].split("//");
		aL = aL[aL.length - 1].split("/");
		aE = aL.length > 1 ? aL.pop() : "";
		if (aF > 0) {
			aN = aH.pop();
			aG = aH.join("?")
		}
		if (aN && aF > 1 && aN.indexOf("&") == -1 && aN.indexOf("%") != -1) {
			aK = "%26"
		}
		aG = aG + "?spm=" + aM + (aN ? (aK + aN) : "") + (aJ ? ("#" + aJ) : "");
		aI = ar(aE, ".") ? aE.split(".").pop().toLowerCase() : "";
		if (aI) {
			if (({
				png : 1,
				jpg : 1,
				jpeg : 1,
				gif : 1,
				bmp : 1,
				swf : 1
			}).hasOwnProperty(aI)) {
				return 0
			}
			if (!aN && aF <= 1) {
				if (!aJ && !({
					htm : 1,
					html : 1,
					php : 1
				}).hasOwnProperty(aI)) {
					aG += "&file=" + aE
				}
			}
		}
		return aG
	}
	function m(aE) {
		return aE && (af.split("#")[0] == aE.split("#")[0])
	}
	function u(aG, aI, aH) {
		if (aH) {
			return
		}
		ab = aa.g_aplus_pv_id;
		if (ab) {
			aI += "." + ab
		}
		if (!ab && (!N || N == t)) {
			return
		}
		var aF = V(aG);
		var aJ = (F(aG, an) || K(aG) || U) == "i";
		var aE = aC + "spm.html?spm=";
		if (!aF || a(aF)) {
			return
		}
		if (!aJ
				&& (W(aF, "#") || m(aF) || W(aF.toLowerCase(), "javascript:")
						|| ah(aF) || i(aF))) {
			return
		}
		if (aJ) {
			aE += aI + "&refer_url=" + encodeURIComponent(af) + "&url="
					+ encodeURIComponent(aF) + "&cache=" + ae();
			if (aq == aG) {
				J(aE)
			}
		} else {
			if (!aH) {
				(aF = P(aF, aI)) && C(aG, aF)
			}
		}
	}
	function C(aH, aG) {
		var aE, aF = aH.innerHTML;
		if (aF && aF.indexOf("<") == -1) {
			aE = G.createElement("b");
			aE.style.display = "none";
			aH.appendChild(aE)
		}
		aH.href = aG;
		if (aE) {
			aH.removeChild(aE)
		}
	}
	function aA(aF) {
		var aH, aE, aG;
		if (s) {
			aE = al(aF);
			aG = R[aE];
			if (aG) {
				aH = aG.spmd
			}
		} else {
			aH = F(aF, ac);
			if (!aH || !aH.match(/^d\w+$/)) {
				aH = ""
			}
		}
		return aH
	}
	function c(aG) {
		var aH, aF, aE = aG;
		while (aG && aG.tagName != "HTML" && aG.tagName != "BODY"
				&& aG.getAttribute) {
			if (!s) {
				aF = aG.getAttribute(ac)
			} else {
				aF = b(aG)
			}
			if (aF) {
				aH = aF;
				aE = aG;
				break
			}
			if (!(aG = aG.parentNode)) {
				break
			}
		}
		return {
			spm_c : aH,
			el : aE
		}
	}
	function O(aF) {
		var aE;
		return (aF && (aE = aF.match(/&?\bspm=([^&#]*)/))) ? aE[1] : ""
	}
	function h(aH) {
		var aG = G.getElementsByTagName("a"), aE = aG.length, aF;
		for (aF = 0; aF < aE; aF++) {
			if (aG[aF] == aH) {
				return aF + 1
			}
		}
		return 0
	}
	function L(aJ, aG) {
		var aE = V(aJ), aI = O(aE), aH = aI ? aI.split(".") : null, aL, aK, aF = N
				&& (aL = N.split(".")).length == 2;
		if (aH && aH.length >= 4 && aH[3]) {
			if (aH[0] == "1003" || aH[0] == "2006") {
			} else {
				if (aF) {
					aH[0] = aL[0];
					aH[1] = aL[1];
					aK = aA(aJ);
					if (aK) {
						aH[3] = aK
					}
				}
			}
			u(aJ, aH.slice(0, 4).join("."), aG);
			return
		} else {
			if (aF) {
				aH = [ N, 0, aA(aJ) || h(aJ) ];
				u(aJ, aH.join("."), aG);
				return
			}
		}
		if (aE && aI) {
			aJ.href = " "
					+ aE.replace(/&?\bspm=[^&#]*/g, "").replace(/&{2,}/g, "&")
							.replace(/\?&/, "?").replace(/\?$/, "").replace(
									/\?#/, "#")
		}
	}
	function I(aG, aE) {
		aq = aG;
		var aF = F(aG, B), aH, aI;
		if (!aF) {
			aH = c(aG.parentNode);
			aI = aH.spm_c;
			if (!aI) {
				L(aG, aE);
				return
			}
			D(aH.el, aI, aE)
		} else {
			u(aG, aF, aE)
		}
	}
	function T(aI) {
		if (!aI || aI.nodeType != 1) {
			return
		}
		Q(aI, "data-spm-max-idx");
		var aF = aj(aI.getElementsByTagName("a")), aH = aj(aI
				.getElementsByTagName("area")), aJ = aF.concat(aH), aG, aE = aJ.length;
		for (aG = 0; aG < aE; aG++) {
			Q(aJ[aG], B)
		}
	}
	function w(aF) {
		var aG = aF.tagName;
		var aE;
		if (aG != "A" && aG != "AREA") {
			return ""
		}
		I(aF, aB);
		aE = F(aF, B);
		return aE ? (aE + "." + ab) : ""
	}
	function ag() {
		if (av) {
			return
		}
		if (!aa.spmData) {
			if (!j) {
				setTimeout(arguments.callee, 100)
			}
			return
		}
		av = aB;
		var aH = aa.spmData["data"], aG, aE, aI, aF;
		if (!aH || !e(aH)) {
			return
		}
		for (aG = 0, aE = aH.length; aG < aE; aG++) {
			aI = aH[aG];
			aF = aI.xpath;
			R[aF] = {
				spmc : aI.spmc,
				spmd : aI.spmd
			}
		}
	}
	if (A(af, [ "xiaobai.com", "admin.taobao.org" ])) {
		return
	}
	q(function() {
		j = aB
	});
	au();
	aD();
	ag();
	M(G, "mousedown", function(aF, aE) {
		var aG;
		while (aE && (aG = aE.tagName)) {
			if (aG == "A" || aG == "AREA") {
				I(aE, k);
				break
			} else {
				if (aG == "BODY" || aG == "HTML") {
					break
				}
			}
			aE = aE.parentNode
		}
	});
	aa.g_SPM = {
		resetModule : T,
		anchorBeacon : I,
		getParam : w
	}
})();
;;
;