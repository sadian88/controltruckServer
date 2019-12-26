import express, { Router } from 'express';
import { indexController } from '../controllers/indexController'
import chequeoListController from '../controllers/chequeoListController';

class ChequeoListRoutes {

    router: Router = Router();

    constructor() {
        this.config();
    }

    config() {
        this.router.get('/', indexController.middleware, chequeoListController.list);
        this.router.get('/:id', chequeoListController.getOne);
        this.router.post('/', chequeoListController.create);
        this.router.put('/:id', chequeoListController.update);
        this.router.delete('/:id', chequeoListController.delete);
    }

}

export default new ChequeoListRoutes().router;