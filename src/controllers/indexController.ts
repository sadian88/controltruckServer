import { Request, Response, NextFunction } from 'express';
import pool from '../database';

import jwt from 'jsonwebtoken';
import config from '../configs/config';


class IndexController {

    public async middleware(req: Request, res: Response, next:NextFunction) {
        
        const token = req.header('authorization');

        if(token){
            
            const bearer = token.toString().split(" ");
            const bearerToken = bearer[1];

            jwt.verify(bearerToken, config.llave, (err, data)=>{
           
                if(err){
                    res.json({
                                status:401,
                                error:err
                            });
                } else {
                    next();
                }
    
            });
        }else{
            res.json({
                        status:401,
                        message:'ruta sin token'
                    });
        }
    }

    public async auth(req: Request, res: Response): Promise<void> {
        console.log(req.body);
        if (req.body)
        {
            
            const user= req.body.email;
            const password = req.body.password;
            
            const Usuario = await pool.query('SELECT * FROM usuario WHERE Email = ? and Password = ?', [user, password]);
                                   
            if (Usuario.length > 0) {
                const token = jwt.sign({user}, config.llave );
                res.json({ status:200,usuario:Usuario,token: token });
            }
            else
            {
                res.json({status:404,usuario:'',token:''});
            }
           
        }
        else
        {
            res.json({ message: 'Error en la solicitud de peticion' });
        }
    }

    public async listIndex(req: Request, res: Response){
        res.json({message:'Estamos en Index'});
    }   

}
export const indexController = new IndexController;