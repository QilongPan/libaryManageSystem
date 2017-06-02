package ser;

import impl.QueryMoreUser;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import user.User;

public class BuyBookEnter extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public BuyBookEnter() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response) ;
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8") ;
		QueryMoreUser userImpl = new QueryMoreUser() ;
		String username = request.getParameter("username") ;
		System.out.println(username) ;
		ArrayList<User> users = userImpl.queryMoreUser(username);
		if(users.size() != 0){
			User user=users.get(0);
			if(user.getPassword().equals(request.getParameter("password"))) {
				request.getSession().setAttribute("userPerson", user) ;
				RequestDispatcher dispatcher = request.getRequestDispatcher("/bookStore.jsp") ;
				System.out.println("登录成功") ;
				dispatcher.forward(request, response) ;
			}
			else{
				RequestDispatcher dispatcher = request.getRequestDispatcher("/bookStore.jsp") ;
				dispatcher.forward(request, response) ;
				System.out.println("密码不正确") ;
			}
		}
		else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/bookStore.jsp") ;
			dispatcher.forward(request, response) ;
			System.out.println("没有该用户") ;
		}

	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
