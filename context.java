package bankVisit;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class context implements ServletContextListener{
	
	@Override
	public void contextInitialized(ServletContextEvent sce)
	{
		ServletContext context = sce.getServletContext();
		
		context.setAttribute("appname", "Online Banking System");
		context.setAttribute("visitorcount" , Integer.valueOf(0));
		
		System.out.println("Application Started");
	}
	

}
