package ser;

import impl.UpdateImpl;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import user.MyBook;


public class UpdateBook extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public UpdateBook() {
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

		response.setContentType("text/html") ;
		request.setCharacterEncoding("utf-8") ;
		UpdateImpl updateUser = new UpdateImpl() ;
		MyBook book = new MyBook() ;
		book.setISBN(request.getParameter("ISBN")) ;
		book.setBookName(request.getParameter("bookName")) ;
		book.setAuthor(request.getParameter("author")) ;
		book.setPrice(request.getParameter("price")) ;
		book.setPath(request.getParameter("path")) ;
		book.setPress(request.getParameter("press")) ;
		book.setImageInformation(request.getParameter("imageInformation")) ;
		book.setInventory(request.getParameter("inventory")) ;
		book.setType(request.getParameter("type")) ;
		updateUser.updateBook(book) ;
		RequestDispatcher dispatcher = request.getRequestDispatcher("/goodsManage.jsp") ;
		dispatcher.forward(request, response) ;
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
