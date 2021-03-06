package emt.emt.reply.dao;

import java.util.List;

import emt.emt.common.domain.Reply;

public interface ReplyDao {
	int replyInsert(Reply reply);
	int replyUpdate(Reply reply);
	int replyDelete(Reply reply);
	
	Reply replyView(Reply reply);
	//댓글 리스트 가져오기
	List<Reply> replyList( int type, int boardNo);
	//댓글을 해당 게시판 번호에 맞게 가져오기
	int replyCount(Reply reply);

}
