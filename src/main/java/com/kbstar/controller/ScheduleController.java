package com.kbstar.controller;

import com.kbstar.dto.Cart;
import com.kbstar.dto.MsgAdm;
import com.kbstar.service.CartService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Random;

@Slf4j
@Component
public class ScheduleController {
    @Autowired
    CartService cartService;
    @Autowired
    private SimpMessageSendingOperations messagingTemplate;

    @Scheduled(cron = "*/5 * * * * *")
    public void cronJobDailyUpdate() {
        Random r = new Random();
        int content1 = r.nextInt(100) + 1;
        int content2 = r.nextInt(1000) + 1;
        int content3 = r.nextInt(500) + 1;
        int content4 = r.nextInt(10) + 1;
        MsgAdm msg = new MsgAdm(content1, content2, content3, content4);
        messagingTemplate.convertAndSend("/sendadm", msg);
    }

    @Scheduled(cron = "*/3 * * * * *")
    public void cronJobWeeklyUpdate() throws Exception {
        Random r = new Random();
        int num = r.nextInt(100) + 1;

        List<Cart> list = cartService.get();
        int len = list.size();
        int total = 0;
        for (Cart obj : list) {
            total = total + obj.getCnt() * obj.getItem_price();
        }

        int sum = cartService.sumcart();
        //log.info(sum + "");
    }


}

