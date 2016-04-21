package emt.emt.reply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import emt.emt.common.domain.Reply;
import emt.emt.common.domain.ReplyParameter;
import emt.emt.reply.dao.ReplyDao;

@Service
public class ReplyServiceImpl implements ReplyService{
	@Autowired private ReplyDao replyDao;
	
	@Override
	public int replyInsert(Reply reply) {
		// TODO Auto-generated method stub
		return replyDao.replyInsert(reply);
	}

	@Override
	public int replyUpdate(Reply reply) {
		// TODO Auto-generated method stub
		return replyDao.replyUpdate(reply);
	}

	@Override
	public int replyDelete(Reply reply) {
		// TODO Auto-generated method stub
		return replyDao.replyDelete(reply);
	}

	@Override
	public List<Reply> replyList(ReplyParameter rep) {
		// TODO Auto-generated method stub
		return replyDao.replyList(rep);
	}

	@Override
	public Reply replyView(Reply reply) {
		// TODO Auto-generated method stub
		return replyDao.replyView(reply);
	}

	@Override
	public int replyCount(Reply reply) {
		// TODO Auto-generated method stub
		return replyDao.replyCount(reply);
	}

}
