import { createPool } from "mysql2/promise";

export const pool = createPool({
  host: "db",
  user: "user",
  password: "password",
  database: "customersdb"
});
