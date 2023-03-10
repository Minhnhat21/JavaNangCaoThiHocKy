package com.minhnhat.util;


import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import com.minhnhat.payload.response.PageInfo;



@Component
public class AppUtils {
    public static Pageable buildPageRequest(Integer page, Integer limit) {
        if(null == page) {
            page = 0;
        }
        if(null == limit) {
            limit = 5;
        }
        return PageRequest.of(page, limit);
    }
    public static PageInfo buildPageResponse(Page page) {
        PageInfo pageInfo = new PageInfo<>();
        pageInfo.setData(page.getContent());
        pageInfo.setPage(page.getNumber());
        pageInfo.setPages(page.getTotalPages());
        pageInfo.setLimit(page.getSize());
        pageInfo.setTotal((int) page.getTotalElements());
        return pageInfo;
    }
}
