package com.yc.fav.service;

import java.util.List;

import com.yc.fav.entity.Favorite;

public interface FavoriteService {

	List<Favorite> listFavs(String tagName);

	boolean addFav(Favorite fav);

}
