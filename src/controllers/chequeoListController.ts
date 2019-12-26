import { Request, Response } from 'express';
import pool from '../database';

class ChequeoListController {

    public async list(req: Request, res: Response): Promise<void> {
        const FPreop_1 = await pool.query('SELECT * FROM FPreop_1');
        res.json(FPreop_1);
    }

    public async getOne(req: Request, res: Response): Promise<any> {
        const { id } = req.params;
        const games = await pool.query('SELECT * FROM FPreop_1 WHERE id = ?', [id]);
        console.log(games.length);
        if (games.length > 0) {
            return res.json(games[0]);
        }
        res.status(404).json({ text: "The game doesn't exits" });
    }

    public async create(req: Request, res: Response): Promise<void> {
        const result = await pool.query('INSERT INTO FPreop_1 set ?', [req.body]);
        res.json({ status: 200, message: 'Chequeo guardado !!' });
    }

    public async update(req: Request, res: Response): Promise<void> {
        const { id } = req.params;
        const oldGame = req.body;
        await pool.query('UPDATE FPreop_1 set ? WHERE id = ?', [req.body, id]);
        res.json({ message: "The game was Updated" });
    }

    public async delete(req: Request, res: Response): Promise<void> {
        const { id } = req.params;
        await pool.query('DELETE FROM FPreop_1 WHERE id = ?', [id]);
        res.json({ message: "The game was deleted" });
    }
}

const chequeoListController = new ChequeoListController;
export default chequeoListController;