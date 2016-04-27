package emt.emt.reply.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import emt.emt.common.domain.Reply;
import emt.emt.reply.dao.ReplyDao;

@Service
public class ReplyServiceImpl implements ReplyService{
	@Autowired private ReplyDao replyDao;
	
	@Transactional
	@Override
	public int replyInsert(Reply reply) {
		return replyDao.replyInsert(reply);
	}

	@Transactional
	@Override
	public int replyUpdate(Reply reply) {
		return replyDao.replyUpdate(reply);
	}

	@Transactional
	@Override
	public int replyDelete(Reply reply) {
		return replyDao.replyDelete(reply);
	}

	@Transactional
	@Override
	public List<Reply> replyList(int type, int boardNo) {
		return replyDao.replyList(type,boardNo);
	}

	@Transactional
	@Override
	public Reply replyView(Reply reply) {
		return replyDao.replyView(reply);
	}

	@Transactional
	@Override
	public int replyCount(Reply reply) {
		return replyDao.replyCount(reply);
	}

}
