package emt.emt.reply.dao.mapper;

import java.util.List;

import emt.emt.common.domain.Reply;

public interface ReplyMapper {
	int replyInsert(Reply reply);
	int replyUpdate(Reply reply);
	int replyDelete(Reply reply);
	List<Reply> replyList();
	Reply replyView(Reply reply);

}