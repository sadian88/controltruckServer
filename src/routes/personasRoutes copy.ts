import express, { Router } from 'express';
import { indexController } from '../controllers/indexController'
import vehiculosController from '../controllers/vehiculosController';

class VehiculosRouter {

    router: Router = Router();

    constructor() {
        this.config();
    }

    config() {
        this.router.get('/', indexController.middleware, vehiculosController.list);
        // this.router.get('/:id',indexController.middleware, personasController.getOneByUser);
        // this.router.post('/', personasController.create);
        // this.router.put('/:id', personasController.update);
        // this.router.delete('/:id', personasController.delete);
    }

}

export default new VehiculosRouter().router;