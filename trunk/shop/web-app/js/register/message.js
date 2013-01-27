AE.namespace('widget');
AE.widget.message = AE.widget.message || function () {



	var _self = this;
	var msgData = [];
	currentIndex = -1;
////////////
	_self.init = function (){
	}
////////////

	/**
 * @method getMsgData
 * @discription 得到数据源
 * @public
 */

 _self.getMsgData = function (){
	return msgData;
	}

	/**
 * @method pushMsg
 * @discription 添加MSG
 * @param msgContent {Str} 任何类型，MSG的内容
 * @param msgName {String} (optional) 信息名
 * @param msgCode {String} (optional) 信息代码。以1开头表示错误信息。2开头表示成功信息。
 * @public
 */
	_self.pushMsg = function (msgContent,msgName,msgCode){

			msgData.push( (new dataItem(msgContent,msgName,msgCode)) );

		return true;
	}
	/**
 * @method fetch
 * @discription 逐个循环得到ITEM，有些问题，近期改掉
 * @public
 */
	_self.fetch = function (){
		var i = ++currentIndex;
		if(msgData[i]){
			return msgData[i]
			}else{
				currentIndex = -1;
				return false;
			}
		}
/**
 * @method getItem
 * @discription 得到某个数据，getItem
 * @param i {Int} 数据的错误值
 * @public
 */
_self.getItem = function (i){
		i = (i>=0)? i : 0;
		return msgData[i]? msgData[i] : false;
		}



/**
 * @method isError
 * @discription 判断整个MSG对象中是否包含错误信息。
 * 效率比较低，是全循环。考虑到实际应用，SMG条数不会多，所以简单实现。
 * 判断整个msg中，是否包含有错误信息。只要有一条错误，就认为整个MSG都属于错误的。
 * @public
 */
_self.isError = function (){
		currentIndex = -1;

		for(var i=0, n = msgData.length; i <n; i++){
			if(msgData[i].isError()){
				return true;
			}
		}
	return false;
	}


/**
 * @method getContent
 * @discription 得到指定Item的内容
 * @param i {Int} 数据的索引
 * @public
 */
_self.getContent = function (i){
	var r = _self.getItem(i);
	return r? r.getContent() : null;
	}


/**
 * @method getItemByName
 * @discription 通过name得到ITEM
 * @param msgName {String} push时给ITEM定的名字
 * @public
 */
		_self.getItemByName = function (msgName){
			var item = {};
			var returnArr = [];

			for(var i=0, n = msgData.length; i <n; i++){
				if(msgData[i].getName() == msgName){
					returnArr.push(msgData[i]);
					}
				}

			return returnArr;
		}



/**
 * @method getAllErrorMsg
 * @discription 得到所有的错误信息
 * @public
 */
		_self.getAllErrorMsg = function (){
			currentIndex = -1;
			var item = {};
			var returnArr = [];

			for(var i=0, n = msgData.length; i <n; i++){
				if(msgData[i].isError()){
					returnArr.push(msgData[i]);
					}
				}

			return returnArr;
		}
/**
 * @method toObject
 * @discription 去掉code信息
 * @public
 */

		_self.toObject = function (){
			var returnObj = {};
			var item = {};
			for(var i=0, n = msgData.length; i <n; i++){
				if(msgData[i].getName() && !msgData[i].getName().isEmpty()){
					returnObj[msgData[i].getName()]=msgData[i].getContent();
					}
				}
			return returnObj;
		}

/**
 * @class dataItem
 * @discription 数据ITEM类
 * 这个是每个信息的结构，是为了轻便，所以就写了个这样的。
 * msgContent,  真正的MSG内容
 * msgName, MSG的名字 可选
 * msgCode MSG的代码，可选，一般用与表识正确或者错误代码。
 * 这里有些反人类，就是把content放前面，把name 放后面，主要考虑是name位非必填项
 * @param msgContent {String} 信息内容主体
 * @param msgName {String} 信息名
 * @param msgCode {String} 信息代码，1开头表示错误信息，2开头表示成功信息
 * @private
 */
		var dataItem = function (msgContent,msgName,msgCode){
			this.msgContent = msgContent;
			this.msgName = msgName;
			this.msgCode = msgCode;
		}

/**
 * @class isError
 * @discription ITEM自身判断是否有是错误信息
 * @private
 */

		dataItem.prototype.isError = function(){
			try{
				return (this.msgCode.toString().indexOf('1') == 0);
				}catch(E){
					return false;
				}
			};
/**
 * @class getContent
 * @discription 得到ITEM的content字段内容
 * @private
 */
			dataItem.prototype.getContent = function (){ return this.msgContent; }
/**
 * @class getName
 * @discription 得到ITEM的name字段内容
 * @private
 */
			dataItem.prototype.getName = function (){ return this.msgName; }
/**
 * @class getCode
 * @discription 得到ITEM的code字段内容
 * @private
 */
			dataItem.prototype.getCode = function (){ return this.msgCode; }

		};


		/*
		以下内容保留，今后优化可参考
AE.namespace('AE.widget.message.dataItem');
AE.widget.message.dataItem = function (msgContent,msgName,msgCode){
	var _self = this;
	_self.msgContent = msgContent;
	_self.msgName = msgName;
	_self.msgCode = msgCode;

	_self.isError = function(){
			try{
				return (_self.msgCode.toString().indexOf('1') == 0);
				}catch(E){
					return false;
				}
			};
	_self.getContent = function (){ return _self.msgContent; }
	_self.getName = function (){ return _self.msgName; }
	_self.getCode = function (){ return _self.msgCode; }


	}
*/