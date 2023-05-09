package com.kbstar.item;

import com.kbstar.dto.Item;
import com.kbstar.dto.ItemSearch;
import com.kbstar.service.ItemService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@Slf4j
@SpringBootTest
class SearchTests {
    @Autowired
    ItemService service;

    @Test
    void contextLoads() {
        List<Item> list = null;
        ItemSearch ms = new ItemSearch("반", 10000, "2023/04/01", "2023/05/02");
        try {
            service.search(ms);
        } catch (Exception e) {

            log.info("......에러다.........");
            e.printStackTrace();
        }

    }
}

