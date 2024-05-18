# Postgres

### Connect to db via docker
```bash
docker run --rm -it --name pgclient jbergknoff/postgresql-client postgresql://<USERNAME>@<HOST-IP>:<PORT>/<DATABASE_NAME>
```

### Speedup queries
- with `Index Cond` instead of `Filter` with `CreateAt > ?1 OR (CreateAt = ?1 AND Id > ?2)`, we can do `(CreateAt, Id) > (?1, ?2)`
- Always use BUFFERS when running an EXPLAIN. It gives some data that may be crucial for the investigation.
- Always, always try to get an Index Cond (called Index range scan in MySQL) instead of a Filter.
- Always, always, always assume PostgreSQL and MySQL will behave differently. Because they do.

Source: [mattermost](https://mattermost.com/blog/making-a-postgres-query-1000-times-faster)