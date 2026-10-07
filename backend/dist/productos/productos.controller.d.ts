import { ProductosService } from './productos.service';
import { Producto } from './producto.entity';
export declare class ProductosController {
    private readonly productosService;
    constructor(productosService: ProductosService);
    list(): Promise<Producto[]>;
}
