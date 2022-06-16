module.exports = ({ env }) => ({
  // ...
  io: {
    enabled: true,
    config: {
      IOServerOptions: {
        cors: { origin: "*", methods: ["GET", "POST"] },
      },
      contentTypes: {
        test: ["create", "publish", "update"],
        notice: ["create", "publish", "update"],
      },
      events: [
        {
          name: "connection",
          handler: ({ strapi }, socket) => {
            strapi.log.info(`[io] new connection with id ${socket.id}`);
          },
        },
      ],
    },
  },
  // ...
});
