/**
 * Timer Lite
 * <a href="http://style.aliexpress.com/js/5v/run/intl-activities/app/timer/timer-lite-demo.html" target="_blank">点击查看demo</a>
 * @module run/intl-activities/app/timer/timer-lite.js
 * @author binlong.libl
 */

(function(globalConfs, constructor){

    // 用于CMD规范模块定义
    if ( typeof define == 'function' ) {
        define( constructor );
    }
    // 用于普通场景的全局变量
    else {
        window['timerLite'] = constructor;
    }

    // 查找已有配置并初始化
    if( globalConfs !== undefined ) {

        // 多个配置项的情况
        if ( typeof globalConfs == "object" && 'splice' in globalConfs && 'join' in globalConfs ) {
            for (var i = 0; i < globalConfs.length; i++) {
                new constructor( globalConfs[i] );
            }
        }
        else {
            new constructor( globalConfs );
        }
        
    }

})( window['timer-lite-config'], function( _config ){

    var config = {
        timeServer     : null,
        targetDate     : null,
        dayBoxId       : null,
        houBoxId       : null,
        minBoxId       : null,
        secBoxId       : null,
        houWithZero    : true,
        minWithZero    : true,
        secWithZero    : true,
        startCallback  : null,
        doneCallback   : null
    };

    var exports = {},
        countItv,
        timeRemaining,
        dayBox,
        houBox,
        minBox,
        secBox,
        dayFunc,
        houFunc,
        minFunc,
        secFunc;

    function getNowDate(args){
        var xmlhttp;
        // code for IE7+, Firefox, Chrome, Opera, Safari
        if (window.XMLHttpRequest){
            xmlhttp = new XMLHttpRequest();
        }
        // code for IE6, IE5
        else{
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        var handleReadystatechange = function(){
            if ( xmlhttp.readyState == 4 ) {
                if ( xmlhttp.status == 200){
                    ( args.done || function(){} ) ( new Date(xmlhttp.getResponseHeader('date')).getTime() );
                }
                else {
                    ( args.fail || function(){} ) ();
                }
                
                ( args.always || function(){} ) ();
            }
        };
        // For FF
        if(xmlhttp.onload === null){
            xmlhttp.onload = handleReadystatechange;
        }

        xmlhttp.onreadystatechange = handleReadystatechange;
        xmlhttp.open('HEAD', config.timeServer, true);
        try{
            xmlhttp.send(null);
        }catch(e){}
    }

    function mergeConfig(selfConf, conf){
        var k;
        for(k in conf){
            selfConf[k] = conf[k];
        }
        return selfConf;
    }

    function finishCountDown(){
        clearInterval(countItv);
        if(typeof config.doneCallback == 'function'){
            config.doneCallback.call(window);
        }
    }

    function doCountDown(timeRemaining){
        if(timeRemaining <= 0){
            timeRemaining = 0;
            finishCountDown();
        }

        dayBox.innerHTML = dayFunc(timeRemaining);
        houBox.innerHTML = houFunc(timeRemaining);
        minBox.innerHTML = minFunc(timeRemaining);
        secBox.innerHTML = secFunc(timeRemaining);
    }

    function startCountDown(){
        clearInterval(countItv);
        countItv = setInterval(function(){
            timeRemaining = timeRemaining - 1000;
            doCountDown(timeRemaining);
        }, 1000);
    }

    function init(conf) {

        config = mergeConfig(config, conf || {});

        config.timeServer = config.timeServer || window.location.href;
        
        if( !config.targetDate ) {
            return false;
        }

        dayBox = document.getElementById(config.dayBoxId) || {};
        houBox = document.getElementById(config.houBoxId) || {};
        minBox = document.getElementById(config.minBoxId) || {};
        secBox = document.getElementById(config.secBoxId) || {};

        dayVal = 'var dayVal = Math.floor( timeRemaining / ' + ( 1000 * 3600 * 24 ) + ' );';
        houVal = 'var houVal = Math.floor( ( timeRemaining / ' + ( 1000 * 3600 ) + ' ) % 24 );';
        minVal = 'var minVal = Math.floor( ( timeRemaining / ' + ( 1000 * 60 ) + ' ) % 60 );';
        secVal = 'var secVal = Math.floor( ( timeRemaining / 1000 ) % 60 );';

        if(typeof dayBox.nodeType == 'number') {
            
        }
        else if(typeof houBox.nodeType == 'number') {
            houVal = 'var houVal = Math.floor( timeRemaining / ' + ( 1000 * 60 * 60 ) + ' );';
        }
        else if(typeof minBox.nodeType == 'number') {
            minVal = 'var minVal = Math.floor( timeRemaining / ' + ( 1000 * 60 ) + ' );';
        }
        else{
            secVal = 'var secVal = Math.floor( timeRemaining / 1000 );';
        }

        dayFunc = new Function('timeRemaining', dayVal  + 'return dayVal;' );
        houFunc = new Function('timeRemaining', houVal + ( config.houWithZero ? 'return ( houVal < 10 ? ("0" + houVal) : houVal );' : 'return houVal;' ) );
        minFunc = new Function('timeRemaining', minVal + ( config.minWithZero ? 'return ( minVal < 10 ? ("0" + minVal) : minVal );' : 'return minVal;' ) );
        secFunc = new Function('timeRemaining', secVal + ( config.secWithZero ? 'return ( secVal < 10 ? ("0" + secVal) : secVal );' : 'return secVal;' ) );

        var nowDateTime;

        getNowDate({
            done : function(_nowDateTime){
                nowDateTime = _nowDateTime;
            },
            fail : function(){
            },
            always : function(){
                nowDateTime = nowDateTime || new Date().getTime();
                timeRemaining = config.targetDate.getTime() - nowDateTime;
                if(typeof config.startCallback == 'function'){
                    config.startCallback.call(window, nowDateTime);
                }
                doCountDown(timeRemaining);
                startCountDown();
            }
        });

        return this;
    }

    exports.init = init;

    if ( _config ) {
        exports.init( _config );
    }

    return exports;

});