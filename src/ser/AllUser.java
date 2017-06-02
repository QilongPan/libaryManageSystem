package ser;

import impl.QueryMoreUser;
import impl.QueryUserAddress;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import user.User;

public class AllUser extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public AllUser() {
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
		this.doPost(request, response);
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
		request.setCharacterEncoding("utf-8");
		QueryMoreUser userMoreImpl = new QueryMoreUser();
		QueryUserAddress quadd = new QueryUserAddress() ;
		String userName=request.getParameter("userName");
		String address = request.getParameter("address") ;
		if(address.length()==0&&userName.length()!=0) {
			ArrayList<User> users=userMoreImpl.queryMoreUser(userName);
			//把数据传递到视图页面中
			request.setAttribute("users", users);
			//页面之间跳转，但不能跳到工程外面
			RequestDispatcher dispatcher=request.getRequestDispatcher("/userManage.jsp");
			dispatcher.forward(request, response);
		}
		else if(address.length()!=0&&userName.length()==0) {
			ArrayList<User> users=quadd.queryUserAddress(address);
			//把数据传递到视图页面中
			request.setAttribute("users", users);
			//页面之间跳转，但不能跳到工程外面
			RequestDispatcher dispatcher=request.getRequestDispatcher("/userManage.jsp");
			dispatcher.forward(request, response);
		}
		else {
			ArrayList<User> users=userMoreImpl.queryMoreUser(userName);
			//把数据传递到视图页面中
			request.setAttribute("users", users);
			//页面之间跳转，但不能跳到工程外面
			RequestDispatcher dispatcher=request.getRequestDispatcher("/userManage.jsp");
			dispatcher.forward(request, response);
		}
		
	/*	ArrayList<User> users=userMoreImpl.queryMoreUser(userName);
			//把数据传递到视图页面中
		request.setAttribute("users", users);
		//页面之间跳转，但不能跳到工程外面
		RequestDispatcher dispatcher=request.getRequestDispatcher("/userManage.jsp");
		dispatcher.forward(request, response);*/
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
