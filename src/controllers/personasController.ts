import { Request, Response } from 'express';
import pool from '../database';

class PersonasController {

    public async list(req: Request, res: Response): Promise<void> {
        const Persona = await pool.query('SELECT * FROM personas');
        res.json(Persona);
    }

    public async getOneByUser(req: Request, res: Response): Promise<any> {
        const { id } = req.params;
        const persona = await pool.query('SELECT * FROM personas WHERE usuarioid= ?', [id]);
        console.log(persona.length);
        if (persona.length > 0) {
            return res.json(persona[0]);
        }
        res.status(404).json({ status:404 });
    }

    public async create(req: Request, res: Response): Promise<void> {
        const result = await pool.query('INSERT INTO personas set ?', [req.body]);
        res.json({ status: 200, message: 'Chequeo guardado !!' });
    }

    public async update(req: Request, res: Response): Promise<void> {
        const { id } = req.params;
        const oldGame = req.body;
        await pool.query('UPDATE personas set ? WHERE id = ?', [req.body, id]);
        res.json({ message: "The game was Updated" });
    }

    public async delete(req: Request, res: Response): Promise<void> {
        const { id } = req.params;
        await pool.query('DELETE FROM personas WHERE id = ?', [id]);
        res.json({ message: "The game was deleted" });
    }
}

const personasController = new PersonasController;
export default personasController;