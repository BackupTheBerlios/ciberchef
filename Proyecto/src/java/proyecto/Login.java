/*
 * Login.java
 *
 * Created on 26 de diciembre de 2007, 14:59
 * Copyright Alberto
 */
package proyecto;

import com.sun.rave.web.ui.appbase.AbstractPageBean;
import com.sun.rave.web.ui.component.Body;
import com.sun.rave.web.ui.component.Button;
import com.sun.rave.web.ui.component.Form;
import com.sun.rave.web.ui.component.Head;
import com.sun.rave.web.ui.component.Html;
import com.sun.rave.web.ui.component.Hyperlink;
import com.sun.rave.web.ui.component.Link;
import com.sun.rave.web.ui.component.MessageGroup;
import com.sun.rave.web.ui.component.Page;
import com.sun.rave.web.ui.component.PanelGroup;
import com.sun.rave.web.ui.component.PanelLayout;
import com.sun.rave.web.ui.component.PasswordField;
import com.sun.rave.web.ui.component.StaticText;
import com.sun.rave.web.ui.component.TextField;
import javax.faces.FacesException;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.event.ValueChangeEvent;
import java.sql.*;
import java.util.*;

/**
 * <p>Page bean that corresponds to a similarly named JSP page.  This
 * class contains component definitions (and initialization code) for
 * all components that you have defined on this page, as well as
 * lifecycle methods and event handlers where you may add behavior
 * to respond to incoming events.</p>
 */
public class Login extends AbstractPageBean {
    // <editor-fold defaultstate="collapsed" desc="Managed Component Definition">
    private int __placeholder;
    
    /**
     * <p>Automatically managed component initialization.  <strong>WARNING:</strong>
     * This method is automatically generated, so any user-specified code inserted
     * here is subject to being replaced.</p>
     */
    private void _init() throws Exception {
    }
    
    private Page page1 = new Page();
    
    public Page getPage1() {
        return page1;
    }
    
    public void setPage1(Page p) {
        this.page1 = p;
    }
    
    private Html html1 = new Html();
    
    public Html getHtml1() {
        return html1;
    }
    
    public void setHtml1(Html h) {
        this.html1 = h;
    }
    
    private Head head1 = new Head();
    
    public Head getHead1() {
        return head1;
    }
    
    public void setHead1(Head h) {
        this.head1 = h;
    }
    
    private Link link1 = new Link();
    
    public Link getLink1() {
        return link1;
    }
    
    public void setLink1(Link l) {
        this.link1 = l;
    }
    
    private Body body1 = new Body();
    
    public Body getBody1() {
        return body1;
    }
    
    public void setBody1(Body b) {
        this.body1 = b;
    }
    
    private Form form1 = new Form();
    
    public Form getForm1() {
        return form1;
    }
    
    public void setForm1(Form f) {
        this.form1 = f;
    }

    private PanelLayout section = new PanelLayout();

    public PanelLayout getSection() {
        return section;
    }

    public void setSection(PanelLayout pl) {
        this.section = pl;
    }

    private StaticText staticText1 = new StaticText();

    public StaticText getStaticText1() {
        return staticText1;
    }

    public void setStaticText1(StaticText st) {
        this.staticText1 = st;
    }

    private StaticText errorlogin = new StaticText();

    public StaticText getErrorlogin() {
        return errorlogin;
    }

    public void setErrorlogin(StaticText st) {
        this.errorlogin = st;
    }

    private TextField user = new TextField();

    public TextField getUser() {
        return user;
    }

    public void setUser(TextField tf) {
        this.user = tf;
    }

    private PasswordField pass = new PasswordField();

    public PasswordField getPass() {
        return pass;
    }

    public void setPass(PasswordField pf) {
        this.pass = pf;
    }

    private Button btn_login = new Button();

    public Button getBtn_login() {
        return btn_login;
    }

    public void setBtn_login(Button b) {
        this.btn_login = b;
    }

    private Hyperlink hyperlink1 = new Hyperlink();

    public Hyperlink getHyperlink1() {
        return hyperlink1;
    }

    public void setHyperlink1(Hyperlink h) {
        this.hyperlink1 = h;
    }

    private Hyperlink hyperlink2 = new Hyperlink();

    public Hyperlink getHyperlink2() {
        return hyperlink2;
    }

    public void setHyperlink2(Hyperlink h) {
        this.hyperlink2 = h;
    }

    private PanelLayout loginPanel = new PanelLayout();

    public PanelLayout getLoginPanel() {
        return loginPanel;
    }

    public void setLoginPanel(PanelLayout pl) {
        this.loginPanel = pl;
    }
    
    // </editor-fold>
    
    /**
     * <p>Construct a new Page bean instance.</p>
     */
    public Login() {
    }
    
        Connection con;
        Statement st;
        ResultSet rs;
    /**
     * <p>Callback method that is called whenever a page is navigated to,
     * either directly via a URL, or indirectly via page navigation.
     * Customize this method to acquire resources that will be needed
     * for event handlers and lifecycle methods, whether or not this
     * page is performing post back processing.</p>
     *
     * <p>Note that, if the current request is a postback, the property
     * values of the components do <strong>not</strong> represent any
     * values submitted with this request.  Instead, they represent the
     * property values that were saved for this view when it was rendered.</p>
     */
    public void init() {
        // Perform initializations inherited from our superclass
        super.init();

        // Perform application initialization that must complete
        // *before* managed components are initialized
        // TODO - add your own initialiation code here
        
        // <editor-fold defaultstate="collapsed" desc="Managed Component Initialization">
        // Initialize automatically managed components
        // *Note* - this logic should NOT be modified
        try {
            _init();
        } catch (Exception e) {
            log("Page1 Initialization Failure", e);
            throw e instanceof FacesException ? (FacesException) e: new FacesException(e);
        }
        
        // </editor-fold>
        // Perform application initialization that must complete
        // *after* managed components are initialized
        // TODO - add your own initialization code here
    }
    
    /**
     * <p>Callback method that is called after the component tree has been
     * restored, but before any event processing takes place.  This method
     * will <strong>only</strong> be called on a postback request that
     * is processing a form submit.  Customize this method to allocate
     * resources that will be required in your event handlers.</p>
     */
    public void preprocess() {
    }
    
    /**
     * <p>Callback method that is called just before rendering takes place.
     * This method will <strong>only</strong> be called for the page that
     * will actually be rendered (and not, for example, on a page that
     * handled a postback and then navigated to a different page).  Customize
     * this method to allocate resources that will be required for rendering
     * this page.</p>
     */
    public void prerender() {
    }
    
    /**
     * <p>Callback method that is called after rendering is completed for
     * this request, if <code>init()</code> was called (regardless of whether
     * or not this was the page that was actually rendered).  Customize this
     * method to release resources acquired in the <code>init()</code>,
     * <code>preprocess()</code>, or <code>prerender()</code> methods (or
     * acquired during execution of an event handler).</p>
     */
    public void destroy() {
    }

    /**
     * <p>Return a reference to the scoped data bean.</p>
     */
    protected SessionBean1 getSessionBean1() {
        return (SessionBean1)getBean("SessionBean1");
    }

    /**
     * <p>Return a reference to the scoped data bean.</p>
     */
    protected RequestBean1 getRequestBean1() {
        return (RequestBean1)getBean("RequestBean1");
    }

    /**
     * <p>Return a reference to the scoped data bean.</p>
     */
    protected ApplicationBean1 getApplicationBean1() {
        return (ApplicationBean1)getBean("ApplicationBean1");
    }

    public String btn_login_action() {
        // TODO: Process the button click action. Return value is a navigation
        // case name where null will return to the same page.
        this.abrirConexion ();
        if (pass.getText().equals(this.consultaUsu((String)user.getText()))) {
            this.cerrarConexion();
            return "login";
        }
        errorlogin.setVisible(true);
        this.cerrarConexion();
        return null;
    }
 
    public void user_processValueChange(ValueChangeEvent event) {
        // TODO: Replace with your code
        
    }

    public String hyperlink1_action() {
        // TODO: Replace with your code
        
        return "case1";
    }
  
    //Crea una conexión a la base de datos
    public void abrirConexion() {
        try {
            String userName="enviste";
            String password="josecanalejas";
            String bd = "prototipo";
            String url="jdbc:mysql://212.145.194.162:3306/"+bd;     ///212.145.194.162
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(url, userName, password);
            System.out.println("Conexión a la BD");
        } catch (Exception e) {
            System.out.println("Error en conexión.");
        }
    }
   
    public void cerrarConexion() {
        try {
            con.close();
            System.out.println("Conexión cerrada.");
        } catch (SQLException e) {
            System.out.println("Error al cerrar conexión.");
        }
    }
   
    //Consulta un campo de una fila con el parametro usuario
    public String consultaUsu(String usuario) {
        String dato="";
        try {
            st = con.createStatement();
            rs = st.executeQuery("SELECT * FROM usuario where nick='"+usuario+"'");
            System.out.println("Tabla abierta");
            if ( rs.next())
            dato=rs.getString("password");
        } catch (SQLException e) {
            System.out.println("Error al Abrir tabla.");
          }
        return dato;
    }
}  


