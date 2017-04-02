package com.yc.fav.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.fav.entity.Tag;
import com.yc.fav.mapper.TagMapper;
import com.yc.fav.service.TagService;

@Service("tagService")
public class TagServiceImpl implements TagService {
	
	@Autowired
	private TagMapper tagMapper;

	@Override
	public List<Tag> listTags() {
		
		return tagMapper.findALlTags();
	}

	@Override
	public Boolean findTag(String tname) {
		return tagMapper.findTagByTname(tname);
	}

	@Override
	public void updateTagCount(String tname) {
		tagMapper.updateTagCounts(tname);
	}

	@Override
	public void insertTag(String tname) {
		tagMapper.insertTag(tname);
	}

}
