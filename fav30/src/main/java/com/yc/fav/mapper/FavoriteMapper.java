package com.yc.fav.mapper;

import java.util.List;

import com.yc.fav.entity.Favorite;

public interface FavoriteMapper {

	List<Favorite> findFavs(String tagName);

	int insertFav(Favorite fav);

}
