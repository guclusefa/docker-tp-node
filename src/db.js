import { createPool } from "mysql2/promise";

export const pool = createPool({
  host: "mysql-fshdujfgsdfnsdfgsj.alwaysdata.net",
  user: "347297_user",
  password: "KJFHSDUIFYzqejhfqhfois<duyfBHJ",
  port: process.env.DB_PORT || 3306,
  database: "fshdujfgsdfnsdfgsj_customers",
});
