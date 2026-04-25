  package logica;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Turno implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ide_turno;
    @Temporal(TemporalType.DATE)
    private Date fecha_turno;
    private String hora_turno;
    private String afeccion;
    @ManyToOne
    @JoinColumn(name = "id_odonto")
    private Odontologo odonto;
    @ManyToOne
    @JoinColumn(name = "id_pacien")
    private Paciente pacien;

    public Turno() {
    }

    public Turno(int ide_turno, Date fecha_turno, String hora_turno, String afeccion) {
        this.ide_turno = ide_turno;
        this.fecha_turno = fecha_turno;
        this.hora_turno = hora_turno;
        this.afeccion = afeccion;
    }

    public int getIde_turno() {
        return ide_turno;
    }

    public void setIde_turno(int ide_turno) {
        this.ide_turno = ide_turno;
    }

    public Date getFecha_turno() {
        return fecha_turno;
    }

    public void setFecha_turno(Date fecha_turno) {
        this.fecha_turno = fecha_turno;
    }

    public String getHora_turno() {
        return hora_turno;
    }

    public void setHora_turno(String hora_turno) {
        this.hora_turno = hora_turno;
    }

    public String getAfeccion() {
        return afeccion;
    }

    public void setAfeccion(String afeccion) {
        this.afeccion = afeccion;
    }

}
