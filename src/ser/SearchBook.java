package ser;

import impl.QueryBookType;
import impl.QueryMoreUser;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import user.MyBook;


public class SearchBook extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public SearchBook() {
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
		QueryMoreUser userMoreImpl = new QueryMoreUser() ;
		QueryBookType queryBo = new QueryBookType() ;
		String bookName=request.getParameter("bookName") ;
		String type = request.getParameter("type") ;
		if((bookName.length() != 0) && (type.length() == 0)) {
			ArrayList<MyBook> books=userMoreImpl.queryMoreBook(bookName) ;
			//把数据传递到视图页面中
		request.setAttribute("books",books) ;
		//页面之间跳转，但不能跳到工程外面
		RequestDispatcher dispatcher = request.getRequestDispatcher("/goodsManage.jsp") ;
		dispatcher.forward(request, response) ;
		}else if((bookName.length() == 0) && (type.length() != 0)) {
			ArrayList<MyBook> books=queryBo.queryBookType(type) ;
			//把数据传递到视图页面中
		request.setAttribute("books",books) ;
		//页面之间跳转，但不能跳到工程外面
		RequestDispatcher dispatcher = request.getRequestDispatcher("/goodsManage.jsp") ;
		dispatcher.forward(request, response) ;
		}
		else {
			ArrayList<MyBook> books=userMoreImpl.queryMoreBook(bookName) ;
			//把数据传递到视图页面中
			request.setAttribute("books",books) ;
			//页面之间跳转，但不能跳到工程外面
			RequestDispatcher dispatcher = request.getRequestDispatcher("/goodsManage.jsp") ;
			dispatcher.forward(request, response) ;
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
