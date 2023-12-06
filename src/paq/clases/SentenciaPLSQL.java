/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package paq.clases;

/**
 *
 * @author Jesu
 */
public interface SentenciaPLSQL {
    // Ventana Cliente
    public final static String ClienteProcedure = "BEGIN insertarCliente(?,?,?,?,?,?); END;";
    public final static String MascotaProcedure = "BEGIN insertarMascota(?,?,?,?,?); END;";
    public final static String VinculoProcedure = "BEGIN VincularClienteMascota(?, ?); END;";
    
    // Ventana Cita
    public final static String CitaProcedure = "BEGIN AgendarCita(?,?,?,?,?,?); END;";
    
    
    // Reportes
    public final static String CALC_1 = "BEGIN calcfrecuenciacitas; END;";
    public final static String CALC_2 = "BEGIN calculareficienciaveterinario; END;";
    public final static String CALC_3 = "BEGIN calgastosinstrumentosporprov; END;";
    public final static String CALC_4 = "{? = call calcingresostotales()}";
    public final static String CALC_5 = "  ? := calcPosiblesGanancias();";
}
