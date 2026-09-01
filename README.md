# Crear tabla Clientes

Crear una tabla **Clientes** con los siguientes campos:

| Campo | Tipo de dato | Descripción |
|---|---|---|
| **Id** | Entero | Identificador del cliente |
| **Nombre** | Cadena de texto | Hasta 50 caracteres |
| **Nombre2** | Cadena de texto | Hasta 50 caracteres |
| **Apellido** | Cadena de texto | Hasta 50 caracteres |
| **FechaCreacion** | Fecha/Hora | Fecha y hora de creación |
| **Sexo** | Cadena de texto | 1 carácter |

## 2. Consultar información de la base de datos

Ejecutar los procedimientos almacenados:

- **SP_Tables** → Para obtener información de las tablas de la base de datos.
- **SP_Columns** → Para obtener información sobre las columnas de la tabla **Clientes**.

## 3. NULL / NOT NULL

Crear una tabla **Clientes** con los siguientes campos:

| Campo | Tipo de dato | Restricción |
|---|---|---|
| **Id** | Entero | Obligatorio (`NOT NULL`) |
| **Nombre** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) |
| **Nombre2** | Cadena de texto hasta 50 caracteres | Opcional (`NULL`) |
| **Apellido** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) |

### Actividades

- Insertar datos de prueba.
- Chequear el funcionamiento de `NULL` y `NOT NULL`.
- Intentar insertar registros con campos obligatorios vacíos.
- Intentar insertar registros sin completar el campo opcional.

---

# 4. DEFAULT

Recrear la tabla **Clientes** con los siguientes campos:

| Campo | Tipo de dato | Restricción |
|---|---|---|
| **Id** | Entero | Obligatorio (`NOT NULL`) |
| **Nombre** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) |
| **Nombre2** | Cadena de texto hasta 50 caracteres | Opcional (`NULL`) |
| **Apellido** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) |
| **FechaCreacion** | Fecha/Hora | Obligatorio (`NOT NULL`) y por defecto la fecha/hora actual |

### Actividades

- Insertar datos de prueba.
- Chequear el funcionamiento de `DEFAULT`.
- Verificar que `FechaCreacion` tome automáticamente la fecha y hora actual cuando no se proporciona un valor.

---

# 5. IDENTITY

Recrear la tabla **Clientes** con los siguientes campos:

| Campo | Tipo de dato | Restricción |
|---|---|---|
| **Id** | Entero | Obligatorio (`NOT NULL`) y autoincremental de 1 en 1 |
| **Nombre** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) |
| **Nombre2** | Cadena de texto hasta 50 caracteres | Opcional (`NULL`) |
| **Apellido** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) |
| **FechaCreacion** | Fecha/Hora | Obligatorio (`NOT NULL`) y por defecto la fecha/hora actual |

### Actividades

- Insertar datos de prueba.
- Chequear el funcionamiento de `IDENTITY`.
- Verificar que el campo `Id` se genere automáticamente.
- Verificar que el `Id` se incremente de 1 en 1.
- Verificar que `FechaCreacion` tome automáticamente la fecha y hora actual.
# 6. Campo Calculado

Recrear la tabla **Clientes** con los siguientes campos:

| Campo | Tipo de dato | Restricción |
|---|---|---|
| **Id** | Entero | Obligatorio (`NOT NULL`), autoincremental de 2 en 2 y comienza en 4 |
| **Nombre** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) |
| **Nombre2** | Cadena de texto hasta 50 caracteres | Opcional (`NULL`) |
| **Apellido** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) |
| **FechaCreacion** | Fecha/Hora | Obligatorio (`NOT NULL`) y por defecto la fecha/hora actual |
| **NombreCompleto** | Campo calculado | Concatenación de `Nombre`, `Nombre2` y `Apellido` |

### Actividades

- Insertar datos de prueba.
- Chequear el funcionamiento del campo calculado.
- Verificar que `Id` comience en **4** y aumente de **2 en 2**.
- Verificar que `FechaCreacion` tome automáticamente la fecha y hora actual.
- Verificar que `NombreCompleto` se genere automáticamente a partir de `Nombre`, `Nombre2` y `Apellido`.

---

# 7. CHECK

Recrear la tabla **Clientes** con los siguientes campos:

| Campo | Tipo de dato | Restricción |
|---|---|---|
| **Id** | Entero | Obligatorio (`NOT NULL`), autoincremental de 2 en 2 y comienza en 4 |
| **Nombre** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) |
| **Nombre2** | Cadena de texto hasta 50 caracteres | Opcional (`NULL`) |
| **Apellido** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) |
| **FechaCreacion** | Fecha/Hora | Obligatorio (`NOT NULL`) y por defecto la fecha/hora actual |
| **NombreCompleto** | Campo calculado | Concatenación de `Nombre`, `Nombre2` y `Apellido` |
| **Sexo** | Cadena de texto de 1 carácter | Solo puede ser `"F"` o `"M"` |

### Actividades

- Insertar datos de prueba.
- Chequear el funcionamiento de `CHECK`.
- Verificar que `Sexo` solo permita los valores **`F`** o **`M`**.
- Intentar insertar un valor diferente de `F` o `M` y comprobar que genere un error.
- Verificar que `Id` comience en **4** y aumente de **2 en 2**.
- Verificar que `FechaCreacion` tome automáticamente la fecha y hora actual.
- Verificar que `NombreCompleto` se genere automáticamente.

# 8. PRIMARY KEY

Crear la tabla **Editorial** con los siguientes campos:

| Campo | Tipo de dato | Restricción |
|---|---|---|
| **Id** | Entero | Obligatorio (`NOT NULL`) y clave primaria (`PRIMARY KEY`) |
| **Nombre** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) |
| **Idioma** | Cadena de texto de 3 caracteres | Opcional (`NULL`) |

### Actividades

- Insertar datos de prueba.
- Chequear el funcionamiento de `PRIMARY KEY`.
- Verificar que no se puedan insertar dos registros con el mismo `Id`.
- Verificar que `Id` no pueda ser `NULL`.

---

# 9. UNIQUE

Crear la tabla **NombresUnicos** con los siguientes campos:

| Campo | Tipo de dato | Restricción |
|---|---|---|
| **Nombre** | Cadena de texto hasta 50 caracteres | Obligatorio (`NOT NULL`) y único (`UNIQUE`) |

### Actividades

- Insertar datos de prueba.
- Chequear el funcionamiento de `UNIQUE`.
- Verificar que no se puedan insertar dos registros con el mismo `Nombre`.

---

# 10. FOREIGN KEY

Crear la tabla **Libro** con los siguientes campos:

| Campo | Tipo de dato | Restricción |
|---|---|---|
| **Id** | Entero | Obligatorio (`NOT NULL`) |
| **IdEditorial** | Entero | Opcional (`NULL`) y clave foránea (`FOREIGN KEY`) hacia `Editorial(Id)` |
| **Titulo** | Cadena de texto hasta 50 caracteres | Opcional (`NULL`) |
| **Area** | Cadena de texto de 4 caracteres | Opcional (`NULL`) |

### Actividades

- Insertar datos de prueba.
- Chequear el funcionamiento de `FOREIGN KEY`.
- Insertar un **Libro sin Editorial**.
- Insertar un **Libro con una Editorial que no existe**.
- Modificar una **Editorial con Libros asociados** → 1.er intento.
- Modificar un **Libro que tenga una Editorial** a otra que no exista.
- Eliminar una **Editorial con Libros asociados** → 1.er intento.
- Modificar una **Editorial sin Libros asociados**.
- Eliminar una **Editorial sin Libros asociados**.

---

## Modificar FOREIGN KEY

Modificar la clave foránea para utilizar:

- `ON UPDATE CASCADE`
- `ON DELETE CASCADE`

### Actividades después de modificar la FOREIGN KEY

- Modificar una **Editorial con Libros asociados** → 2.º intento.
- Eliminar una **Editorial con Libros asociados** → 2.º intento.

### Conceptos a comprobar

| Acción | Sin CASCADE | Con CASCADE |
|---|---|---|
| Modificar Editorial asociada a Libros | No permite modificar la clave relacionada | Actualiza automáticamente los Libros |
| Eliminar Editorial asociada a Libros | No permite eliminarla | Elimina automáticamente los Libros asociados |
| Libro sin Editorial | Permitido porque `IdEditorial` es `NULL` | Permitido |
| Libro con Editorial inexistente | No permitido | No permitido |
