package DAO;
import MODEL.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAOCliente {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cliente> lista = new ArrayList<>();
    
    public DAOCliente() {
        
        conn = new Conexao().getConexao();
        
    }
    
    //metodo inserir cliente
    
    public void inserirCliente(Cliente cliente) {
        
        String sql = "INSERT INTO tb_clientes(nome,email)VALUES(?,?)";
        
        try {
            
            stmt = conn.prepareStatement(sql);
            stmt.setString(1,cliente.getNome());
            stmt.setString(2,cliente.getEmail());
            stmt.execute();
            stmt.close();
            
        } 
        
        catch (Exception erro) {
            
            throw new RuntimeException("Erro Inserir Cliente: ", erro);
            
        }
         
    } 
    
    public void removerCliente(Cliente cliente) {
        
        String sql = "DELETE FROM tb_clientes WHERE id = ?";
        
        try {
            
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1,cliente.getId());
            stmt.execute();
            stmt.close();
            
        } 
        
        catch (Exception erro) {
            
            throw new RuntimeException("Erro Remover Cliente: ", erro);
            
        }
        
    }
    
    public void uptadeCliente(Cliente cliente) {
        
        String sql = "UPDATE tb_clientes SET nome=?, email=? WHERE id=?";
        
        try {
            
            stmt = conn.prepareStatement(sql);
            stmt.setString(1,cliente.getNome());
            stmt.setString(2,cliente.getEmail());
            stmt.setInt(3,cliente.getId());
            stmt.execute();
            stmt.close();
            
        } 
        
        catch (Exception erro) {
            
            throw new RuntimeException("Erro Update Cliente: ", erro);
            
        }
        
    }
    
    public ArrayList<Cliente> listarCliente() {
        
        String sql = "SELECT * FROM tb_clientes";
        
        try { 
            
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()) {
                
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setEmail(rs.getString("email"));
                
                lista.add(cliente);
                
            }
            
        }
        
        catch (Exception erro) {
            
            throw new RuntimeException("Erro no Listar Clientes: " + erro);
            
        }
        
        return lista;
        
    }
    
    public ArrayList<Cliente> pesquisarNome(String v) {
        
        String sql = "SELECT * FROM tb_clientes WHERE nome LIKE '%"+v+"%' ";
        
        try { 
            
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()) {
                
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id"));
                cliente.setNome(rs.getString("nome"));
                cliente.setEmail(rs.getString("email"));
                
                lista.add(cliente);
                
            }
            
        }
        
        catch (Exception erro) {
            
            throw new RuntimeException("Erro no Pesquisar por nome: " + erro);
            
        }
        
        return lista;
        
    }
    
       
}
