AE.define("ua", function() {
	function b(d) {
		var e = 0;
		return parseFloat(d.replace(/\./g, function() {
			return (e++ == 1) ? "" : "."
		}))
	}
	function a(f) {
		var i = navigator, h = {
			ie : 0,
			opera : 0,
			gecko : 0,
			webkit : 0,
			chrome : 0,
			mobile : null,
			ipad : 0,
			iphone : 0,
			ipod : 0,
			ios : 0,
			android : 0,
			secure : false,
			os : null
		}, e = f || (i && i.userAgent), g = window && window.location, d = g
				&& g.href, c;
		h.secure = d && (d.toLowerCase().indexOf("https") === 0);
		h.parseUA = a;
		if (e) {
			if ((/windows|win32/i).test(e)) {
				h.os = "windows"
			} else {
				if ((/macintosh/i).test(e)) {
					h.os = "macintosh"
				}
			}
			if ((/KHTML/).test(e)) {
				h.webkit = 1
			}
			c = e.match(/AppleWebKit\/([^\s]*)/);
			if (c && c[1]) {
				h.webkit = b(c[1]);
				if (/ Mobile\//.test(e)) {
					h.mobile = "Apple";
					c = e.match(/OS ([^\s]*)/);
					if (c && c[1]) {
						c = b(c[1].replace("_", "."));
						h.ios = c
					}
					h.ipad = h.ipod = h.iphone = 0;
					c = e.match(/iPad|iPod|iPhone/);
					if (c && c[0]) {
						h[c[0].toLowerCase()] = h.ios
					}
				} else {
					c = e.match(/NokiaN[^\/]*|Android \d\.\d/);
					if (c) {
						h.mobile = c[0]
					}
					if (/ Android/.test(e)) {
						h.mobile = "Android";
						c = e.match(/Android ([^\s]*);/);
						if (c && c[1]) {
							h.android = b(c[1])
						}
					}
				}
				c = e.match(/Chrome\/([^\s]*)/);
				if (c && c[1]) {
					h.chrome = b(c[1])
				}
			}
			if (!h.webkit) {
				c = e.match(/Opera[\s\/]([^\s]*)/);
				if (c && c[1]) {
					h.opera = b(c[1]);
					c = e.match(/Version\/([^\s]*)/);
					if (c && c[1]) {
						h.opera = b(c[1])
					}
					c = e.match(/Opera Mini[^;]*/);
					if (c) {
						h.mobile = c[0]
					}
				} else {
					c = e.match(/MSIE\s([^;]*)/);
					if (c && c[1]) {
						h.ie = b(c[1])
					} else {
						c = e.match(/Gecko\/([^\s]*)/);
						if (c) {
							h.gecko = 1;
							c = e.match(/rv:([^\s\)]*)/);
							if (c && c[1]) {
								h.gecko = b(c[1])
							}
						}
					}
				}
			}
		}
		return h
	}
	this.exports = a()
});
;
AE
		.define(
				"core",
				[ "lang" ],
				function(d) {
					var f = this.exports, k = Array.prototype.slice, l = f.compose = function(
							o) {
						var n = k.call(arguments, 0);
						n[0] = i(o);
						return a.apply(f, n)
					}, i = f.extend = function(q, p, n) {
						var o = function(t) {
							var u, r = [], s;
							t = t || {};
							if (!(this instanceof o)) {
								return new o(t)
							}
							if (n) {
								m(t, n, false)
							}
							if (o._auxConstructors) {
								r = o._auxConstructors.slice()
							}
							if (o.prototype.hasOwnProperty("_izer")) {
								r.push(o.prototype._izer)
							}
							if (o.superclass) {
								r.unshift(o.superclass.constructor)
							}
							while (u = r.shift()) {
								if (s = u.call(this, t) || s) {
									break
								}
							}
							return s ? s : undefined
						};
						if (q !== Object) {
							o.prototype = Object.create(q.prototype);
							o.prototype.constructor = o;
							o.superclass = q.prototype
						} else {
							o.superclass = null
						}
						if (p) {
							m(o.prototype, p)
						}
						return o
					}, b = f.implement = function(n) {
						return a.apply(f, arguments)
					}, j = f.merge = function() {
						var n = k.call(arguments);
						n.unshift({});
						return m.apply(f, n)
					}, m = f.mix = function() {
						var s = k.call(arguments), t = s.shift(), q = d
								.isBoolean(s[s.length - 1]) ? s.pop() : true, n, p = 0, v, o, r, u;
						while (n = s[p++]) {
							v = Object.keys(n);
							for (o = 0, r = v.length; o < r; ++o) {
								u = v[o];
								if (!t.hasOwnProperty(u) || q) {
									t[u] = n[u]
								}
							}
						}
						return t
					};
					function a(q) {
						var n = q._auxConstructors, o = 1, p;
						if (!n) {
							n = q._auxConstructors = []
						}
						while (p = arguments[o++]) {
							if (n.indexOf(p) === -1) {
								n.push(p);
								m(q.prototype, p.prototype, false)
							}
						}
						return q
					}
					var h = f.IDisposable = (function() {
						function n(o) {
						}
						n.prototype = {
							dispose : function() {
								var p = this.constructor, o;
								while (p) {
									if (p.prototype.hasOwnProperty("_dtor")
											&& (o = p.prototype._dtor)) {
										o.apply(this)
									}
									p = p.superclass ? p.superclass.constructor
											: null
								}
							}
						};
						return n
					}());
					var e = f.IEventable = (function() {
						function n(o) {
							this._events = {}
						}
						n.prototype = {
							_fire : function(u, s) {
								if (d.isString(u)) {
									u = {
										type : u
									}
								}
								u.target = u.target || this;
								var r = this._events, t = (r[u.type] || [])
										.concat(r["*"] || []), o = t.length, q = 0, p = true;
								for (; q < o; ++q) {
									p = t[q].call(this, u, s) !== false && p
								}
								return p
							},
							detach : function(t, u) {
								var r = this._events, s, q, o, p;
								if (t && (s = r[t])) {
									if (u) {
										for (q = 0, o = s.length; q < o; ++q) {
											if (s[q] === u
													|| s[q].listener === u) {
												s.splice(q, 1);
												break
											}
										}
									}
									if (!u || s.length === 0) {
										delete r[t]
									}
								} else {
									for (p in r) {
										if (r.hasOwnProperty(p)) {
											delete r[p]
										}
									}
								}
								return this
							},
							hijack : function(p) {
								var o = this[p];
								if (d.isFunction(o) && !d.isFunction(o[0])) {
									this[p] = function() {
										var q = {
											args : k.call(arguments),
											context : this
										};
										if (this._fire("before:" + p, q)) {
											q.ret = o.apply(q.context, q.args);
											this._fire("after:" + p, q);
											return q.ret
										}
									};
									this[p][0] = o
								}
								return this
							},
							on : function(u, q, p) {
								var x = this._events, v = x[u], r, t, s = -1, w = this, o;
								if (d.isFunction(q)) {
									p = q;
									q = undefined
								}
								if (!v) {
									v = x[u] = []
								}
								for (r = 0, t = v.length; r < t; ++r) {
									if (v[r] === p
											|| v[r][0] === p
											|| v[r] === p[0]
											|| (v[r][0] !== undefined
													&& p[0] !== undefined && v[r][0] === p[0])) {
										s = r;
										break
									}
								}
								if (!d.isUndefined(q)) {
									o = function(z, y) {
										z.data = q;
										return p.call(this, z, y)
									};
									o[0] = p
								}
								if (s === -1) {
									x[u].push(o || p)
								}
								return {
									detach : function() {
										w.detach(u, p)
									}
								}
							},
							once : function(p, r, q) {
								if (d.isFunction(r)) {
									q = r;
									r = undefined
								}
								var o = this, s = function(u, t) {
									o.detach(p, s);
									if (r) {
										u.data = r
									}
									return q.call(this, u, t)
								};
								s[0] = q;
								return this.on(p, s)
							},
							rescue : function(p) {
								var o = this[p];
								if (d.isFunction(o) && d.isFunction(o[0])) {
									this[p] = o[0]
								}
								return this
							}
						};
						return n
					}());
					var c = f.IPropertyable = (function() {
						function n(o) {
							this._properties = {}
						}
						n.prototype = {
							defineProperties : function(q) {
								var r = Object.keys(q), o = r.length, p = 0;
								for (; p < o; ++p) {
									this.defineProperty(r[p], q[r[p]])
								}
								return this
							},
							defineProperty : function(p, o) {
								var q = this._properties;
								if (!(p in q) || Object(q[p]).configurable) {
									q[p] = m(q[p] || {}, o)
								}
								return this
							},
							get : function(p) {
								var q = this._properties, o = q
										.hasOwnProperty(p) ? q[p] || {}
										: q["*"] || {};
								if (o.get || o.set) {
									return o.get ? o.get.call(this, p)
											: undefined
								} else {
									return o.value
								}
							},
							hasProperty : function(o) {
								var p = this._properties;
								return p.hasOwnProperty(o)
							},
							removeProperty : function(o) {
								var p = this._properties;
								if (p.hasOwnProperty(o)) {
									delete p[o]
								}
								return this
							},
							set : function(p, q) {
								var r = this._properties, o = r
										.hasOwnProperty(p) ? r[p] : r["*"]
										|| null;
								if (!o) {
									o = !(p in r) ? (r[p] = {
										configurable : true,
										writable : true
									}) : {}
								}
								if (o.get || o.set) {
									o.set ? o.set.call(this, p, q) : null
								} else {
									o.writable ? o.value = q : null
								}
								return this
							}
						};
						return n
					}());
					var g = f.Base = (function() {
						return b(i(Object), h, e, c)
					}())
				});
;
AE
		.define(
				"dom",
				[ "lang", "core", "ua" ],
				function(f, h, c) {
					var b = window.YUD, a = window.YUE, p = Array.prototype.slice, o = {}, k = this.exports = g;
					function j(u) {
						var s, t, r;
						try {
							s = p.call(u)
						} catch (v) {
							s = [];
							for (t = 0, r = u.length; t < r; ++t) {
								s.push(u[t])
							}
						}
						return s
					}
					function q(r) {
						return function(s) {
							return r(g(s))
						}
					}
					function g(s) {
						var r = s ? s.nodeType : null, t = o[r];
						return s ? (t ? new t({
							node : s
						}) : new n({
							node : s
						})) : s
					}
					function i(r) {
						return j(this[0].getElementsByTagName(r)).map(
								function(s) {
									return g(s)
								}, this)
					}
					function m(s, r) {
						return j(b.getElementsByClassName(s, r || "*", this[0]))
								.map(function(t) {
									return g(t)
								})
					}
					var e = k.DomEventArgs = (function() {
						var t = {
							focusin : "focus",
							focusout : "blur"
						}, r = function(u) {
							return t[u] || u
						}, s = h.extend(Object, {
							_izer : function(u) {
								var v = this[0] = u.arg;
								this.type = r(v.type);
								this.target = g(a.getTarget(v));
								this.currentTarget = u.owner;
								this.timeStamp = a.getTime(v);
								this.screenX = v.screenX;
								this.screenY = v.screenY;
								this.clientX = v.clientX;
								this.clientY = v.clientY;
								this.pageX = a.getPageX(v);
								this.pageY = a.getPageY(v);
								this.ctrlKey = v.ctrlKey;
								this.shiftKey = v.shiftKey;
								this.altKey = v.altKey;
								this.metaKey = v.metaKey;
								this.button = v.button;
								this.relatedTarget = g(a.getRelatedTarget(v));
								this.keyCode = v.keyCode;
								this.charCode = a.getCharCode(v)
							},
							preventDefault : function() {
								a.preventDefault(this[0])
							},
							stopPropagation : function() {
								a.stopPropagation(this[0])
							}
						});
						return s
					}());
					var n = k.Node = (function() {
						var v = {}, t = 0, u = "_hozid";
						function r() {
							return t++
						}
						var s = h
								.extend(
										h.Base,
										{
											_dtor : function() {
												var w = this[0][u];
												this.detach();
												delete v[w];
												delete this[0]
											},
											_izer : function(x) {
												var y = this[0] = x.node, z = y[u], w = v[z]
														|| this;
												if (w !== this) {
													return w
												}
												if (z === undefined) {
													y[u] = z = r()
												}
												v[z] = this;
												this
														.defineProperty(
																"*",
																{
																	get : function(
																			A) {
																		var B = A in this[0] ? this[0][A]
																				: null;
																		if (f
																				.isObject(B)
																				&& "item" in B
																				&& "length" in B) {
																			B = j(
																					B)
																					.map(
																							function(
																									C) {
																								return g(C)
																							},
																							this)
																		}
																		return B
																	},
																	set : function(
																			A,
																			B) {
																		if (A in this[0]) {
																			this[0][A] = B
																		} else {
																			this
																					.defineProperty(
																							A,
																							{
																								configurable : true,
																								value : B,
																								writable : true
																							})
																		}
																	}
																});
												this._nativeListener = {
													abort : null,
													blur : null,
													change : null,
													click : null,
													dblclick : null,
													error : null,
													focus : null,
													keydown : null,
													keypress : null,
													keyup : null,
													load : null,
													mousedown : null,
													mousemove : null,
													mouseout : null,
													mouseover : null,
													mouseup : null,
													reset : null,
													resize : null,
													select : null,
													scroll : null,
													submit : null,
													unload : null
												}
											},
											appendTo : function(w) {
												w = w instanceof s ? w[0] : w;
												w.appendChild(this[0]);
												return this
											},
											detach : function(B, A) {
												var x = s.superclass.detach
														.apply(this, arguments), w = this._nativeListener, z = this._events, y;
												if (B && B in w && !z[B]) {
													y = [ B ]
												} else {
													y = Object.keys(w)
												}
												y
														.forEach(
																function(C) {
																	var D;
																	if (D = w[C]) {
																		w[C] = null;
																		if (B === "blur") {
																			a
																					.removeBlurListener(
																							this[0],
																							D)
																		} else {
																			if (B === "focus") {
																				a
																						.removeFocusListener(
																								this[0],
																								D)
																			} else {
																				a
																						.removeListener(
																								this[0],
																								B,
																								D)
																			}
																		}
																	}
																}, this);
												return x
											},
											getChildren : function(w) {
												return b.getChildrenBy(this[0],
														w && q(w)).map(
														function(x) {
															return g(x)
														})
											},
											getFirstChild : function(w) {
												return g(b.getFirstChild(
														this[0], w && q(w)))
											},
											getLastChild : function(w) {
												return g(b.getLastChild(
														this[0], w && q(w)))
											},
											getNext : function(w) {
												return g(b.getNextSibling(
														this[0], w && q(w)))
											},
											getParent : function(w) {
												return g(b.getAncestorBy(
														this[0], w && q(w)))
											},
											getParents : function(y) {
												var w = this[0].parentNode, x = [];
												while (w) {
													if (w && w.nodeType === 1
															&& (!y || y(g(w)))) {
														x.push(w)
													}
													w = w.parentNode
												}
												return x.map(function(z) {
													return g(z)
												})
											},
											getPrev : function(w) {
												return g(b
														.getPreviousSiblingBy(
																this[0], w))
											},
											hasProperty : function(w) {
												return s.superclass.hasProperty
														.apply(this, arguments)
														|| w in this[0]
											},
											insertAfter : function(w) {
												b.insertAfter(this[0],
														w instanceof s ? w[0]
																: w);
												return this
											},
											insertBefore : function(w) {
												b.insertBefore(this[0],
														w instanceof s ? w[0]
																: w);
												return this
											},
											isAncestor : function(w) {
												return b.isAncestor(this[0],
														w instanceof s ? w[0]
																: w)
											},
											isDescendant : function(w) {
												return b.isAncestor(
														w instanceof s ? w[0]
																: w, this[0])
											},
											on : function(z) {
												var x = s.superclass.on.apply(
														this, arguments), w = this._nativeListener, y;
												if (z in w) {
													if (!w[z]) {
														y = w[z] = function(A) {
															this._fire(new e({
																arg : A,
																owner : this
															}))
														};
														if (z === "blur") {
															a.addBlurListener(
																	this[0], y,
																	this, true)
														} else {
															if (z === "focus") {
																a
																		.addFocusListener(
																				this[0],
																				y,
																				this,
																				true)
															} else {
																a
																		.addListener(
																				this[0],
																				z,
																				y,
																				this,
																				true)
															}
														}
													}
												}
												return x
											},
											remove : function() {
												var w = this[0].parentNode;
												if (w) {
													w.removeChild(this[0])
												}
												return this
											},
											replaceWith : function(x) {
												var w = this[0].parentNode;
												if (w) {
													x = x instanceof s ? x[0]
															: x;
													w.replaceChild(x, this[0])
												}
												return g(x)
											}
										});
						return s
					}());
					var d = k.Element = o[1] = (function() {
						var s = (!window.document.documentElement.hasAttribute) ? {
							"for" : "htmlFor",
							"class" : "className"
						}
								: {
									htmlFor : "for",
									className : "class"
								}, r = {
							checked : true
						}, u = /^(?:href|src)$/;
						var t = h
								.extend(
										n,
										{
											addClass : function(v) {
												b.addClass(this[0], v);
												return this
											},
											byClass : m,
											byTag : i,
											generateId : function(v) {
												return b.generateId(this[0], v)
											},
											getAttribute : function(v) {
												var w;
												v = s[v] || v;
												if (r[v]) {
													w = this[0][v]
												} else {
													if (u.test(v)) {
														w = this[0]
																.getAttribute(
																		v, 2)
													} else {
														w = this[0]
																.getAttribute(v)
													}
												}
												return w
											},
											getRegion : function() {
												var v = b.getRegion(this[0]);
												return {
													top : v.top,
													right : v.right,
													bottom : v.bottom,
													left : v.left,
													width : v.right - v.left,
													height : v.bottom - v.top
												}
											},
											getStyle : function(v) {
												return b.getStyle(this[0], v)
											},
											getX : function() {
												return b.getX(this[0])
											},
											getXY : function() {
												return b.getXY(this[0])
											},
											getY : function() {
												return b.getY(this[0])
											},
											hasClass : function(v) {
												return b.hasClass(this[0], v)
											},
											inDocument : function(v) {
												v = v || window.document;
												return b
														.isAncestor(
																(v instanceof n ? v[0]
																		: v).documentElement,
																this[0])
											},
											removeClass : function(v) {
												b.removeClass(this[0], v);
												return this
											},
											replaceClass : function(w, v) {
												b.replaceClass(this[0], w, v);
												return this
											},
											setAttribute : function(v, w) {
												v = s[v] || v;
												if (r[v]
														&& this[0].tagName !== "BUTTON") {
													this[0][v] = w
												} else {
													this[0].setAttribute(v, w)
												}
												return this
											},
											setStyle : function(v, w) {
												b.setStyle(this[0], v, w);
												return this
											},
											setX : function(v) {
												b.setX(this[0], v);
												return this
											},
											setXY : function(v) {
												b.setXY(this[0], v);
												return this
											},
											setY : function(v) {
												b.setY(this[0], v);
												return this
											}
										});
						return t
					}());
					var l = k.Document = o[9] = (function() {
						var r = h
								.extend(
										n,
										{
											byClass : m,
											byId : function(s) {
												return g(this[0]
														.getElementById(s))
											},
											byTag : i,
											createElement : function(s) {
												return g(this[0]
														.createElement(s))
											},
											getClientRegion : function() {
												var x = this
														.getDocumentScrollTop(), v = this
														.getDocumentScrollLeft(), u = this
														.getViewportWidth(), y = this
														.getViewportHeight(), z = u
														+ v, s = y + x;
												return {
													top : x,
													right : z,
													bottom : s,
													left : v,
													width : u,
													height : y
												}
											},
											getCookie : function(s) {
												var t = this[0].cookie
														.match("(?:^|;)\\s*"
																+ s
																+ "=([^;]*)");
												return t ? unescape(t[1]) : ""
											},
											getDocumentHeight : function() {
												var s = (this[0].compatMode !== "CSS1Compat") ? this[0].body.scrollHeight
														: this[0].documentElement.scrollHeight;
												return Math.max(s, this
														.getViewportHeight())
											},
											getDocumentScrollLeft : function() {
												return b
														.getDocumentScrollLeft(this[0])
											},
											getDocumentScrollTop : function() {
												return b
														.getDocumentScrollTop(this[0])
											},
											getDocumentWidth : function() {
												var s = (this[0].compatMode !== "CSS1Compat") ? this[0].body.scrollWidth
														: this[0].documentElement.scrollWidth;
												return Math.max(s, this
														.getViewportWidth())
											},
											getViewportHeight : function() {
												var s = window.innerHeight;
												mode = this[0].compatMode;
												if ((mode || c.ie) && !c.opera) {
													s = (mode === "CSS1Compat") ? this[0].documentElement.clientHeight
															: this[0].body.clientHeight
												}
												return s
											},
											getViewportWidth : function() {
												var s = window.innerWidth, t = this[0].compatMode;
												if (t || c.ie) {
													s = (t === "CSS1Compat") ? this[0].documentElement.clientWidth
															: this[0].body.clientWidth
												}
												return s
											},
											removeCookie : function(t, s) {
												s = s || {};
												s.value = "", s.expires = -1;
												this.setCookie(t, s);
												return this
											},
											setCookie : function(v, u) {
												var x = u.value, s = u.expires, w = u.domain, y = u.path;
												x = escape(x);
												x += w ? "; domain=" + w : "";
												x += y ? "; path=" + y : "";
												if (s) {
													var t = new Date();
													t.setTime(t.getTime() + s
															* 86400000);
													x += "; expires="
															+ t.toGMTString()
												}
												this[0].cookie = v + "=" + x;
												return this
											}
										}, {
											node : document
										});
						return r
					}())
				});
;

;
