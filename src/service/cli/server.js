'use strict';

const chalk = require(`chalk`);
const express = require(`express`);

const fs = require(`fs`).promises;
const {HttpCode, DEFAULT_PORT, MOCKS_SOURCE, NOT_FOUND_MESSAGE_TEXT} = require(`../../constants`);

const app = express();
app.use(express.json());

const prepareData = async () => {
  try {
    const fileContent = await fs.readFile(MOCKS_SOURCE);
    const mocks = JSON.parse(fileContent);
    return mocks;
  } catch (err) {
    return [];
  }
};


app.get(`/posts`, async (req, res) => {
  try {
    const mocks = await prepareData();
    res.json(mocks);
  } catch (err) {
    res.status(HttpCode.INTERNAL_SERVER_ERROR).send(err);
  }
});

app.use((req, res) => res
  .status(HttpCode.NOT_FOUND)
  .send(NOT_FOUND_MESSAGE_TEXT));

const createServer = (port) => {
  app.listen(port, (err) => {
    if (err) {
      console.error(chalk.red(`Ошибка при создании сервера`), err);
    } else {
      console.info(chalk.green(`Ожидаю соединений на ${port}`));
    }
  });
};

module.exports = {
  name: `--server`,
  run(args) {
    const [customPort] = args;
    const port = Number.parseInt(customPort, 10) || DEFAULT_PORT;
    createServer(port);
  }
};
