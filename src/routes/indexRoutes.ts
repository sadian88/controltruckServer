import { Router } from 'express';
import jwt from 'jsonwebtoken';

import { indexController } from '../controllers/indexController';

class IndexRoutes {

    public router: Router = Router();

    constructor() {
        this.config();
    }

    config(): void {
        this.router.get('/', indexController.middleware, indexController.listIndex);
        this.router.post('/auth', indexController.auth);
    }

}

const indexRoutes = new IndexRoutes();
export default indexRoutes.router;