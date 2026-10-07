import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ProductosModule } from './productos/productos.module';
import { Producto } from './productos/producto.entity';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'mysql',
      host: process.env.DB_HOST || 'db',
      port: parseInt(process.env.DB_PORT || '3306', 10),
      username: process.env.DB_USERNAME || 'user',
      password: process.env.DB_PASSWORD || 'userpass',
      database: process.env.DB_DATABASE || 'tienda',
      entities: [Producto],
      synchronize: false, // Usamos la BD inicializada por script SQL
    }),
    ProductosModule,
  ],
})
export class AppModule {}
