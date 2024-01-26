package com.bst.ticket.oauth;

import lombok.AllArgsConstructor;

import java.util.*;

@AllArgsConstructor
public class NaverUserInfo implements OAuth2UserInfo{

    private Map<String, Object> attributes;

    @Override
    public String getProviderId() {
        return (String) ((Map) attributes.get("response")).get("id");
    }

    @Override
    public String getProvider() {
        return "naver";
    }

    @Override
    public String getEmail() {
        return  (String) ((Map) attributes.get("response")).get("email");
    }

    @Override
    public String getName() {
        return (String) ((Map) attributes.get("response")).get("name");
    }

    @Override
    public String getBirthyear() {
        return  (String) ((Map) attributes.get("response")).get("birthyear");
    }

    @Override
    public String getBirthday() {
        return (String) ((Map) attributes.get("response")).get("birthday");
    }
}