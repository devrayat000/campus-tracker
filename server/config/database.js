const dbregex =
  /^postgres:\/\/(?<username>[\w\-_\.]+):(?<password>[\w\-_\.]+)@(?<host>[\w\-_\.]+):(?<port>\d+)\/(?<db>[\w\-_\.]+)$/;

module.exports = ({ env }) => {
  const databaseUrl = env(
    "DATABASE_URL",
    "postgres://postgres:ppooii12@127.0.0.1:5432/campus-tracker"
  );

  const { username, password, host, port, db } =
    dbregex.exec(databaseUrl).groups;

  return {
    connection: {
      client: "postgres",
      connection: {
        host: env("DATABASE_HOST", host),
        port: env.int("DATABASE_PORT", port),
        database: env("DATABASE_NAME", db),
        user: env("DATABASE_USERNAME", username),
        password: env("DATABASE_PASSWORD", password),
        ssl:
          env("NODE_ENV") === "production"
            ? {
                rejectUnauthorized: env.bool("DATABASE_SSL_SELF", false), // For self-signed certificates
              }
            : false,
      },
      debug: env("NODE_ENV") !== "production",
    },
  };
};
