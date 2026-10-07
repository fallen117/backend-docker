import { Repository } from 'typeorm';
import { Producto } from './producto.entity';
export declare class ProductosService {
    private readonly productosRepository;
    constructor(productosRepository: Repository<Producto>);
    findAll(): Promise<Producto[]>;
}
