module.exports = ({ env }) => ({
  // ...
  io: {
    enabled: true,
    config: {
      IOServerOptions: {
        cors: { origin: "*", methods: ["GET", "POST"] },
      },
      contentTypes: {
        test: "*",
        notice: "*",
      },
      events: [
        {
          name: "connection",
          handler: ({ strapi }, socket) => {
            strapi.log.info(`[io] new connection with id ${socket.id}`);
          },
        },
        {
          name: "notice:initial",
          handler: async ({ strapi }, socket) => {
            const notices = await strapi.entityService.findMany(
              "api::notice.notice",
              {
                sort: { createdAt: "DESC" },
                publicationState: "live",
              }
            );
            strapi.log.info(`[io] requesting every notice`);
            strapi.$io.raw("notice:initial", notices);
          },
        },
        {
          name: "test:initial",
          handler: async ({ strapi }, socket) => {
            const tests = await strapi.entityService.findMany(
              "api::test.test",
              {
                sort: { occurring: "ASC" },
                publicationState: "live",
              }
            );
            strapi.log.info(`[io] requesting every test`);
            strapi.$io.raw("test:initial", tests);
          },
        },
      ],
    },
  },
  // ...
});

// npm install @exfabrica/strapi-plugin-awesome-help
// npm install @exfabrica/strapi-plugin-awesome-seo
// npm install @offset-dev/strapi-calendar
// npm install @strapi/plugin-seo
