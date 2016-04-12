package emt.emt.reply.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emt.emt.common.domain.Reply;
import emt.emt.reply.dao.mapper.ReplyMapper;

@Repository
public class ReplyDaoImpl implements ReplyDao{
	@Autowired private ReplyMapper replyMapper;
	
	@Override
	public int replyInsert(Reply reply) {
		// TODO Auto-generated method stub
		return replyMapper.replyInsert(reply);
	}

	@Override
	public int replyUpdate(Reply reply) {
		// TODO Auto-generated method stub
		return replyMapper.replyUpdate(reply);
	}

	@Override
	public int replyDelete(Reply reply) {
		// TODO Auto-generated method stub
		return replyMapper.replyDelete(reply);
	}

	@Override
	public List<Reply> replyList() {
		// TODO Auto-generated method stub
		return replyMapper.replyList();
	}

	@Override
	public Reply replyView(Reply reply) {
		// TODO Auto-generated method stub
		return replyMapper.replyView(reply);
	}

}
