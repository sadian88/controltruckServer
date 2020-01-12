import { Request, Response } from 'express';
import pool from '../database';

class VehiculosController {

    public async list(req: Request, res: Response): Promise<void> {
        const vehiculos = await pool.query('SELECT * FROM vehiculos');
        res.json(vehiculos);
    }

}

const vehiculosController = new VehiculosController;
export default vehiculosController;