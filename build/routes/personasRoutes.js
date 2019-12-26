"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const indexController_1 = require("../controllers/indexController");
const personasController_1 = __importDefault(require("../controllers/personasController"));
class PersonasRouter {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/', indexController_1.indexController.middleware, personasController_1.default.list);
        this.router.get('/:id', indexController_1.indexController.middleware, personasController_1.default.getOneByUser);
        this.router.post('/', personasController_1.default.create);
        this.router.put('/:id', personasController_1.default.update);
        this.router.delete('/:id', personasController_1.default.delete);
    }
}
exports.default = new PersonasRouter().router;
