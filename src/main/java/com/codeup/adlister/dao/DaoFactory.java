package com.codeup.adlister.dao;

import sun.security.krb5.Config;
import sun.security.krb5.KrbException;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Config config;

    static {
        try {
            config = new Config();
        } catch (KrbException e) {
            e.printStackTrace();
        }
    }

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
}
