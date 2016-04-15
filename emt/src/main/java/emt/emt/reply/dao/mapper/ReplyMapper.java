package emt.emt.reply.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;

import emt.emt.common.domain.Reply;

public interface ReplyMapper {
	@Insert("INSERT INTO reply values ( seq_reply_no.nextval, #{replyContent}, #{userId},sysdate, null)")
	int replyInsert(Reply reply);
	int replyUpdate(Reply reply);
	int replyDelete(Reply reply);
	
	Reply replyView(Reply reply);
	//댓글 리스트 가져오기
	List<Reply> replyList(int type);
	//댓글을 해당 게시판 번호에 맞게 가져오기
	int replyCount();
	
}
