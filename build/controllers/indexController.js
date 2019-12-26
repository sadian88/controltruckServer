"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const database_1 = __importDefault(require("../database"));
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const config_1 = __importDefault(require("../configs/config"));
class IndexController {
    middleware(req, res, next) {
        return __awaiter(this, void 0, void 0, function* () {
            const token = req.header('authorization');
            if (token) {
                const bearer = token.toString().split(" ");
                const bearerToken = bearer[1];
                jsonwebtoken_1.default.verify(bearerToken, config_1.default.llave, (err, data) => {
                    if (err) {
                        res.json({
                            status: 401,
                            error: err
                        });
                    }
                    else {
                        next();
                    }
                });
            }
            else {
                res.json({
                    status: 401,
                    message: 'ruta sin token'
                });
            }
        });
    }
    auth(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            console.log(req.body);
            if (req.body) {
                const user = req.body.email;
                const password = req.body.password;
                const Usuario = yield database_1.default.query('SELECT * FROM usuario WHERE Email = ? and Password = ?', [user, password]);
                if (Usuario.length > 0) {
                    const token = jsonwebtoken_1.default.sign({ user }, config_1.default.llave);
                    res.json({ status: 200, usuario: Usuario, token: token });
                }
                else {
                    res.json({ status: 404, usuario: '', token: '' });
                }
            }
            else {
                res.json({ message: 'Error en la solicitud de peticion' });
            }
        });
    }
    listIndex(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            res.json({ message: 'Estamos en Index' });
        });
    }
}
exports.indexController = new IndexController;
