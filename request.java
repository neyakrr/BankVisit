package bankVisit;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class request implements ServletRequestListener {
	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		ServletContext context = sre.getServletContext();
		Integer count = (Integer) context.getAttribute("visitorcount");
		
		if(count == null)
		{
			count = 0;
		}
		
		context.setAttribute("visitorcount", count+1 );
	}

}
