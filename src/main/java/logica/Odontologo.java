package logica;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Odontologo extends Persona implements Serializable{
    
    //private int id_odontologo;
    private String especialidad;
    @OneToOne
    private Usuario unUsuario;
    @OneToMany(mappedBy = "odonto")
    private List<Turno> listaTurnos;
    @OneToOne
    private Horario unHorario;

    public Odontologo() {
    }
                       //int id_odontologo, -> Podria ingresar nuevamente al contructor 
                          // |
                          // V

    public Odontologo(String especialidad, Usuario unUsuario, List<Turno> listaTurnos, Horario unHorario, int id, String dni, String nombre, String apellido, String telefono, String direccion, Date fecha_nac) {
        super(id, dni, nombre, apellido, telefono, direccion, fecha_nac);
        this.especialidad = especialidad;
        this.unUsuario = unUsuario;
        this.listaTurnos = listaTurnos;
        this.unHorario = unHorario;
    }
   

    /*public int getId_odontologo() {
        return id_odontologo;
    }

    public void setId_odontologo(int id_odontologo) {
        this.id_odontologo = id_odontologo;
    }*/

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public Usuario getUnUsuario() {
        return unUsuario;
    }

    public void setUnUsuario(Usuario unUsuario) {
        this.unUsuario = unUsuario;
    }

    public List<Turno> getListaTurnos() {
        return listaTurnos;
    }

    public void setListaTurnos(List<Turno> listaTurnos) {
        this.listaTurnos = listaTurnos;
    }

    public Horario getUnHorario() {
        return unHorario;
    }

    public void setUnHorario(Horario unHorario) {
        this.unHorario = unHorario;
    }
    
    

}
