dataSource {
	pooled = true
	driverClassName = "org.hsqldb.jdbcDriver"
	username = "sa"
	password = ""
}

//dataSource {
//    pooled = true
//    url = "jdbc:postgresql://localhost:5432/neptune"
//    driverClassName = "org.postgresql.Driver"
//    dialect = org.hibernate.dialect.PostgreSQLDialect
//    username = "grails"
//    password = "grails"
//}

hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='com.opensymphony.oscache.hibernate.OSCacheProvider'
}

// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "update" // one of 'create', 'create-drop','update'
			url = "jdbc:hsqldb:file:devDB;shutdown=true"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:hsqldb:mem:testDB"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:hsqldb:file:prodDB;shutdown=true"
		}
	}
}