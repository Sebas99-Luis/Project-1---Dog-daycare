# DogDayCare Data Project

## Descripción del proyecto

Repositorio oficial del proyecto de datos de **DogDayCare**, un pequeño negocio de servicios que necesitaba organizar y comprender mejor su información operativa y financiera.

El proyecto consolida, audita, limpia y modela todas las fuentes de datos del negocio con el objetivo de construir una **fuente única de verdad**, habilitar análisis confiables y proporcionar **dashboards ejecutivos** para la toma de decisiones.

El foco del proyecto no es la complejidad técnica, sino transformar datos desordenados en información clara y accionable para el negocio.

### Incluye
- Auditoría de calidad de datos  
- Limpieza y estandarización  
- Modelado relacional en PostgreSQL  
- Definición de KPIs del negocio  
- Dashboard ejecutivo en Power BI  
- Documentación técnica y funcional  
- Roadmap de mejoras  

---

## Tabla de contenidos
- Descripción del proyecto  
- Estructura del repositorio  
- Requisitos técnicos  
- Instalación  
- Uso  
- Base de datos  
- KPIs  
- Dashboard  
- Roadmap  
- Mantenimiento  

---

## Estructura del repositorio

/data
/raw
/clean
/notebooks
/sql
/dashboard
/docs
docker-compose.yml
requirements.txt
README.md


---

## Requisitos técnicos

### Software
- Python 3.x  
- PostgreSQL  
- Power BI Desktop  
- Git  

### Librerías Python
- pandas  
- numpy  
- matplotlib  
- seaborn  

---

## Instalación

### Clonar el repositorio
```bash
git clone <url-del-repositorio>
cd dogdaycare-data-project
```

## Crear entorno virtual (opcional pero recomendado)

```bash
python -m venv venv
source venv/bin/activate  # Linux / Mac
venv\Scripts\activate     # Windows
```
## Uso
### Para análisis

Utilizar los datasets limpios ubicados en /data/clean o conectarse directamente a la base de datos PostgreSQL.

### Para reproducir auditorías

Ejecutar los notebooks ubicados en la carpeta /notebooks, siguiendo el orden indicado.

### Para reporting

Abrir el archivo de Power BI ubicado en /dashboard y actualizar la conexión a la base de datos PostgreSQL local.

## Base de datos
### Tablas limpias

- customers
- bookings
- payments

### Relaciones

- customers (1) → bookings (N)
- bookings (1) → payments (N)

## KPIs

### KPIs definidos y utilizados en el proyecto:

- Clientes activos
- Nuevos clientes
- Retención de clientes
- Total de reservas
- Ocupación por servicio
- Tasa de cancelación
- Ingresos totales
- ARPB (Ingreso promedio por reserva)
- ARPC (Ingreso promedio por cliente)
- Duración promedio del servicio
- Tiempo entre reservas

## Dashboard
Dashboard ejecutivo desarrollado en Power BI, compuesto por dos páginas:
### Página 1
- KPIs principales
- Ingresos totales
- Servicios
- Métodos de pago
- Monedas

### Página 2

- Métodos de pago detallados
- Ingresos por país
- Reembolsos
- Tabla detallada de pagos
- Archivo disponible en la carpeta /dashboard.

## Roadmap
### Corto plazo

- Reducir cancelaciones
- Validar países y monedas
- Revisar reembolsos en meses críticos
- Mediano plazo
- Optimizar servicios subutilizados
- Optimizar métodos de pago
- Crear vistas materializadas en la base de datos

###Largo plazo

- Automatizar procesos ETL
- Implementar modelos predictivos
- Expansión internacional basada en datos

## Mantenimiento

- Los datasets deben actualizarse siguiendo las reglas de limpieza documentadas

- Los KPIs deben revisarse periódicamente según cambios en el negocio

- El dashboard puede ampliarse conforme se incorporen nuevas fuentes de datos


---

### ✅ Resultado
- Markdown válido para GitHub  
- Claro, profesional y ordenado  
- Coherente con un proyecto real de cliente  
- Listo para **copiar y pegar sin tocar nada**

Si quieres, el siguiente ajuste fino podría ser:
- 🔍 versión **más comercial** vs **más técnica**
- 🔐 separar README **público** y **privado**
- 📦 convertir esto en **plantilla base reutilizable**

Dime cómo seguimos y cerramos esto a nivel 🔝
