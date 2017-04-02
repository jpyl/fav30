package com.yc.fav.mapper;

import java.util.List;

import com.yc.fav.entity.Tag;

public interface TagMapper {

	List<Tag> findALlTags();

	Boolean findTagByTname(String tname);

	void updateTagCounts(String tname);

	void insertTag(String tname);

}
