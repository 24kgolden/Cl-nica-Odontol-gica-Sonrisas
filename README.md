# Clínica Odontológica Sonrisas

Sistema web de gestión para clínica odontológica desarrollado con Java EE (JSP / Servlets / JPA) y Bootstrap 4.

---

## Descripción

Aplicación web para la administración interna de una clínica odontológica. Permite gestionar odontólogos, pacientes y usuarios del sistema, con autenticación de sesión y una interfaz moderna y responsiva.

---

## Tecnologías utilizadas

| Tecnología | Descripción |
|---|---|
| Java EE (JSP / Servlets) | Backend y lógica del servidor |
| JPA (Java Persistence API) | Persistencia y acceso a datos |
| MySQL | Base de datos relacional |
| Apache Tomcat / TomEE | Servidor de aplicaciones |
| Bootstrap 4 (SB Admin 2) | Framework CSS base |
| Font Awesome | Íconos |
| Google Fonts (Nunito) | Tipografía |
| DataTables | Tablas interactivas |
| Chart.js | Gráficas y estadísticas |
| jQuery | Manipulación del DOM |
| Maven | Gestión de dependencias |

---

## Estructura del proyecto

```
ConsultorioOdontologico-1.0-SNAPSHOT/
│
├── Web Pages/
│   ├── META-INF/
│   ├── WEB-INF/
│   │
│   ├── components/                    ← Fragmentos reutilizables
│   │   ├── header.jsp                 ← Head HTML + estilos globales
│   │   ├── body_primera_parte.jsp     ← Sidebar + Topbar
│   │   └── body_final.jsp             ← Footer + Modal logout + Scripts
│   │
│   ├── css/
│   ├── img/
│   ├── js/
│   ├── scss/
│   ├── vendor/
│   │
│   ├── login.jsp                      ← Inicio de sesión
│   ├── loginError.jsp                 ← Error de credenciales
│   ├── sinLogin.jsp                   ← Acceso sin sesión activa
│   ├── index.jsp                      ← Dashboard principal
│   ├── altasOdontologo.jsp            ← Alta de odontólogos
│   ├── altaUsuarios.jsp               ← Alta de usuarios
│   ├── editarUsuarios.jsp             ← Edición de usuarios
│   └── verUsuarios.jsp                ← Listado de usuarios
│
├── Source Packages/
│   └── com.mycompany.consultorioodontologico/
│       │
│       ├── logica/                    ← Clases del modelo (entidades)
│       │   ├── Controladora.java
│       │   ├── Horario.java
│       │   ├── Odontologo.java
│       │   ├── Paciente.java
│       │   ├── Persona.java
│       │   ├── Responsable.java
│       │   ├── Secretario.java
│       │   ├── Turno.java
│       │   └── Usuario.java
│       │
│       ├── persistencia/              ← Controladores JPA
│       │   ├── ControladoraPersistencia.java
│       │   ├── HorarioJpaController.java
│       │   ├── OdontologoJpaController.java
│       │   ├── PacienteJpaController.java
│       │   ├── PersonaJpaController.java
│       │   ├── ResponsableJpaController.java
│       │   ├── SecretarioJpaController.java
│       │   ├── TurnoJpaController.java
│       │   └── UsuarioJpaController.java
│       │
│       ├── persistencia.exceptions/   ← Excepciones personalizadas JPA
│       │
│       └── servlets/                  ← Controladores HTTP
│           ├── SvLogin.java
│           ├── SvUsuarios.java
│           ├── SvEditUsuarios.java
│           └── SvElimUsuarios.java
│
├── Other Sources/
│   └── src/main/resources/
│       └── META-INF/
│           └── persistence.xml        ← Configuración JPA / base de datos
│
└── Project Files/
    ├── pom.xml                        ← Dependencias Maven
    ├── nbactions.xml
    └── nb-configuration.xml
```

---

## Requisitos previos

- Java JDK 8 o superior
- Apache Tomcat 9+ o TomEE
- NetBeans IDE (recomendado)
- MySQL Server
- Maven

---

## Instalación y ejecución

### 1. Clonar el repositorio
```bash
git clone https://github.com/24kgolden/Cl-nica-Odontol-gica-Sonrisas.git
```

### 2. Crear la base de datos en MySQL
```sql
CREATE DATABASE clinica_odontologica;
```

### 3. Configurar la conexión JPA

Editar `src/main/resources/META-INF/persistence.xml` con tus credenciales:

```xml
<property name="javax.persistence.jdbc.url"
          value="jdbc:mysql://localhost:3306/clinica_odontologica?serverTimezone=UTC"/>
<property name="javax.persistence.jdbc.user"     value="root"/>
<property name="javax.persistence.jdbc.password" value="tu_contraseña"/>
```

### 4. Importar el proyecto en NetBeans
- `File` → `Open Project` → seleccionar la carpeta del proyecto
- NetBeans detectará automáticamente el `pom.xml`

### 5. Ejecutar en Tomcat / TomEE
- Clic derecho en el proyecto → `Run`
- El servidor desplegará la app en:

```
http://localhost:8080/ConsultorioOdontologico/login.jsp
```

---

## Funcionalidades

- [x] Login con validación de sesión (Servlet `SvLogin`)
- [x] Redirección automática si no hay sesión activa (`sinLogin.jsp`)
- [x] Pantalla de error de credenciales (`loginError.jsp`)
- [x] Gestión de Usuarios — ver, alta, editar, eliminar
- [x] Gestión de Odontólogos — ver, alta
- [x] Gestión de Pacientes — ver, alta
- [x] Persistencia con JPA (controladores por entidad)
- [x] Cierre de sesión con modal de confirmación
- [x] Interfaz responsiva con componentes reutilizables (header / navbar / footer)

---

## Base de datos

| Parámetro | Valor |
|---|---|
| Motor | MySQL |
| Host | localhost |
| Puerto | 3306 |
| Base de datos | `clinica_odontologica` |
| Timezone | UTC |

---

## Capturas de pantalla

> Agrega capturas de las vistas principales.

| Login | Dashboard |
|---|---|
| ![Login](img/screenshot-login.png) | ![Dashboard](img/screenshot-dashboard.png) |

---

## Autor

- **Edwar Ramírez Castillo** — Desarrollo completo — [@24kgolden](https://github.com/24kgolden) · [@666_serpico](https://x.com/666_serpico)

---

## 📄 Licencia

Este proyecto está bajo la licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
