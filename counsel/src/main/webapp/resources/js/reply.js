var replyService = (function() {
    var add = function(reply, callback, error) {
    	$.ajax({
            url:"../replies/add",
            type:"post",
            data:JSON.stringify(reply),
            dataType:"json",
            contentType:"application/json; charset=utf-8",
            success : function(result, satatus, xhr) {
                if(callback) callback(result);
            },
            error : function(xhr, status, er) {
                if(error) error(er);
            }
        })
    }
    var getList = function(param, callback, error) {
        var bno = param.bno;

        var url = "../replies/" + bno
        $.ajax({
            url:url,
            type:"get",
            dataType:"json",
            contentType:"application/json; charset=utf-8",
            success : function(result, satatus, xhr) {
                if(callback) callback(result);
            },
            error : function(xhr, status, er) {
                if(error) error(xhr);
            }
        })
    }
    
    var get = function(rno, callback, error) {
        $.ajax({
            url:"../replies/reply/" + rno,
            type:"get",
            dataType:"json",
            contentType:"application/json; charset=utf-8",
            success : function(result, satatus, xhr) {
                if(callback) callback(result);
            },
            error : function(xhr, status, er) {
                if(error) error(er);
            }
        })
    }
    
    var remove = function(reply, callback, error) {
        $.ajax({
            url:"../replies/" + reply.counsel_reply_rno,
            type:"delete",
            data:JSON.stringify(reply),
            contentType:"application/json; charset=utf-8",
            success : function(result, satatus, xhr) {
                if(callback) callback(result);
            },
            error : function(xhr, status, er) {
                if(error) error(xhr);
            }
        })
    }
    var update = function(reply, callback, error) {
        $.ajax({
            url:"../replies/" + reply.counsel_reply_rno,
            type:"put",
            data:JSON.stringify(reply),
            contentType:"application/json; charset=utf-8",
            success : function(result, satatus, xhr) {
                if(callback) callback(result);
            },
            error : function(xhr, status, er) {
                if(error) error(er);
            }
        })
    }
    
    return {
        add : add,
        getList : getList,
        get : get,
        remove : remove,
        update : update
    };
})();