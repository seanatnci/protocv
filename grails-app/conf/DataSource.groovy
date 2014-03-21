dataSource {
    pooled = true
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
}

// environment specific settings
environments {
    development {
        dataSource {
            //dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:mysql://localhost/protocv?useUnicode=yes&characterEncoding=UTF-8"
            username = "root"
            password = "30lospinos"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost/protocv_prod?useUnicode=yes&characterEncoding=UTF-8"
            username = "root"
            password = "30lospinos"
        }
    }
    production {
        dataSource {
            dbCreate = "create-drop"
            driverClassName = "org.postgresql.Driver"
            dialect = org.hibernate.dialect.PostgreSQLDialect
            //URI dbUri = new URI(System.getenv("CLEARDB_DATABASE_URL"));
            URI dbUri = new URI(System.getenv("HEROKU_POSTGRESQL_CYAN_URL"));
            username = dbUri.getUserInfo().split(":")[0];
            password = dbUri.getUserInfo().split(":")[1];
            url = "jdbc:postgresql://" + dbUri.getHost() + dbUri.getPath();

        }
    }
}
