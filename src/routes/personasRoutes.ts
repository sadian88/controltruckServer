import express, { Router } from 'express';
import { indexController } from '../controllers/indexController'
import personasController from '../controllers/personasController';

class PersonasRouter {

    router: Router = Router();

    constructor() {
        this.config();
    }

    config() {
        this.router.get('/', indexController.middleware, personasController.list);
        this.router.get('/:id',indexController.middleware, personasController.getOneByUser);
        this.router.post('/', personasController.create);
        this.router.put('/:id', personasController.update);
        this.router.delete('/:id', personasController.delete);
    }

}

export default new PersonasRouter().router;