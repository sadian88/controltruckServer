import express, { Application } from 'express';
import morgan from 'morgan';
import cors from 'cors';

import jwt from 'jsonwebtoken';
import config from './configs/config';

import indexRoutes from './routes/indexRoutes';
import chequeoListRoutes from './routes/chequeoListRoutes';
import personasRouter from './routes/personasRoutes';



class Server {

    public app: Application;
    
    constructor() {
        this.app = express();
        this.config();
        this.routes();
    }

    config(): void {
        this.app.set('llave',config.llave);
        this.app.set('port', process.env.PORT || 3000);
        this.app.use(morgan('dev'));
        this.app.use(cors());
        this.app.use(express.json());
        this.app.use(express.urlencoded({extended: false}));
    }

    routes(): void {
        this.app.use('/api/', indexRoutes);
        this.app.use('/api/chequeo', chequeoListRoutes);
        this.app.use('/api/personas', personasRouter);
    }

    start() {
        this.app.listen(this.app.get('port'), () => {
            console.log('Server on port', this.app.get('port'));
        });
    }

}

//levanto el servidor
const server = new Server();
server.start();