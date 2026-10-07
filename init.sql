CREATE DATABASE IF NOT EXISTS tienda;
USE tienda;

CREATE TABLE IF NOT EXISTS productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    categoria VARCHAR(50),
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO productos (nombre, descripcion, precio, stock, categoria) VALUES
('Laptop Pro 15', 'Ordenador portátil de alto rendimiento con procesador Intel i7 y 16GB RAM', 1299.99, 15, 'Electrónica'),
('Mouse Inalámbrico RGB', 'Ratón ergonómico con iluminación RGB y sensor óptico de alta precisión', 29.50, 50, 'Accesorios'),
('Teclado Mecánico', 'Teclado mecánico switches red con retroiluminación LED', 79.90, 30, 'Accesorios'),
('Monitor 27 IPS 4K', 'Monitor ultra HD 4K con tasa de refresco de 144Hz', 349.00, 20, 'Pantallas'),
('Auriculares Bluetooth', 'Auriculares inalámbricos con cancelación activa de ruido', 89.99, 45, 'Audio'),
('Disco Duro SSD 1TB', 'Unidad de estado sólido NVMe M.2 con velocidades de 3500MB/s', 109.95, 60, 'Almacenamiento'),
('Silla Gaming Ergonomica', 'Silla ajustable con soporte lumbar y reposabrazos 4D', 199.99, 12, 'Muebles'),
('Webcam Full HD 1080p', 'Cámara web con micrófono estéreo integrado y enfoque automático', 49.90, 25, 'Video'),
('Impresora Multifuncional', 'Impresora láser a color con conectividad Wi-Fi y escáner', 189.50, 10, 'Oficina'),
('Smartphone 128GB', 'Teléfono inteligente con pantalla AMOLED y cámara triple de 64MP', 599.00, 18, 'Telefonía');
