
package com.mycompany.pagina1;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class PersonaDAO implements CRUD {

    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p = new Persona();
    
    @Override
    public List listar() {
        ArrayList<Persona>list=new ArrayList<>();
        String sql="select * from pacientes";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Persona per = new Persona();
                per.setId(rs.getInt("Id"));
                per.setPaciente(rs.getString("Paciente"));
                per.setEnfermedad(rs.getString("Enfermedad"));
                per.setEstado(rs.getString("Estado"));
                list.add(per);       
            }
        } catch (Exception e){
            
        } 
        return list;
    }

    @Override
    public Persona list(int id) {
        String sql="select * from pacientes where Id="+id;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                p.setId(rs.getInt("Id"));
                p.setPaciente(rs.getString("Paciente"));
                p.setEnfermedad(rs.getString("Enfermedad"));
                p.setEstado(rs.getString("Estado"));      
            }
        } catch (Exception e){           
        } 
        return p;
    }

    @Override
    public boolean add(Persona per) {
        String sql="insert into pacientes(Paciente, Enfermedad, Estado)values('"+per.getPaciente()+"','"+per.getEnfermedad()+"','"+per.getEstado()+"')";
        try{
           con = cn.getConnection();
           ps=con.prepareStatement(sql);
           ps.executeUpdate();
        } catch(Exception e){
            
        }
        return false;
    }

    @Override
    public boolean edit(Persona per) {
        String sql="update pacientes set Id='"+per.getId()+"',Paciente='"+per.getPaciente()+"'where Id="+per.getId();
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from pacientes where Id="+id;
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch(Exception e){
            
        }
        return false;
    }
    
} 
