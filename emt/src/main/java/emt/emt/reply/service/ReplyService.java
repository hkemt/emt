package emt.emt.reply.service;

import java.util.List;

import emt.emt.common.domain.Reply;

public interface ReplyService {
	int replyInsert(Reply reply);
	int replyUpdate(Reply reply);
	int replyDelete(Reply reply);
	List<Reply> replyList();
	Reply replyView(Reply reply);

}
