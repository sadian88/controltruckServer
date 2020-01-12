"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const indexController_1 = require("../controllers/indexController");
const vehiculosController_1 = __importDefault(require("../controllers/vehiculosController"));
class VehiculosRouter {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/', indexController_1.indexController.middleware, vehiculosController_1.default.list);
        // this.router.get('/:id',indexController.middleware, personasController.getOneByUser);
        // this.router.post('/', personasController.create);
        // this.router.put('/:id', personasController.update);
        // this.router.delete('/:id', personasController.delete);
    }
}
exports.default = new VehiculosRouter().router;
