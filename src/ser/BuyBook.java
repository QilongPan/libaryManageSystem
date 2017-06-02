package ser;

import impl.JudgeMoney;
import impl.QueryBook;
import impl.UpdateImpl;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import user.MyBook;
import user.User;

public class BuyBook extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public BuyBook() {
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
		System.out.println(request.getParameter("buyNumber")) ;
		@SuppressWarnings("unchecked")
		ArrayList<MyBook> books =(ArrayList<MyBook>) request.getSession().getAttribute("books");
		String path = books.get(0).getPath();
		QueryBook querybook = new QueryBook() ;
		querybook.queryBook(path) ;
		String numberString = request.getParameter("buyNumber");
		System.out.println(request.getSession().getAttribute("string"));
		if(numberString!=null&&numberString!="") {
			int number = Integer.parseInt(numberString) ;
			String numberSaleString = books.get(0).getInventory();
			int numberSale = Integer.parseInt(numberSaleString) ;
			String endString="" ;
			if(numberSale<number){
				endString="ʣ���鼮����" ;
				//�����ݴ��ݵ���ͼҳ����
				request.setAttribute("endString", endString) ;
				//ҳ��֮����ת��������������������
				RequestDispatcher dispatcher = request.getRequestDispatcher("/end.jsp") ;
				dispatcher.forward(request, response) ;
				System.out.println("ʣ���鼮����");
			}
			else{
				User user = (User)request.getSession().getAttribute("userPerson") ;
				if(user == null) {
					endString="����û��¼,����ʧ��";
					//�����ݴ��ݵ���ͼҳ����
					request.setAttribute("endString", endString) ;
					//ҳ��֮����ת��������������������
					RequestDispatcher dispatcher = request.getRequestDispatcher("/end.jsp") ;
					dispatcher.forward(request, response) ;
					System.out.println("����û��¼,����ʧ��") ;
				}
				else{
					JudgeMoney jm = new JudgeMoney() ;
					int money = number * Integer.parseInt(books.get(0).getPrice());
					boolean con = jm.judgeMoney(user, money) ;
					if(con){
						String inven=""+(numberSale-number) ;
						books.get(0).setInventory(inven);
						UpdateImpl upl = new UpdateImpl() ;
						upl.updateBook(books.get(0));
						endString="����ɹ�";
						//�����ݴ��ݵ���ͼҳ����
						request.setAttribute("endString", endString) ;
						//ҳ��֮����ת��������������������
						RequestDispatcher dispatcher = request.getRequestDispatcher("/end.jsp") ;
						dispatcher.forward(request, response) ;
						System.out.println("����ɹ�") ;
					}
					else {
						endString="����";
						//�����ݴ��ݵ���ͼҳ����
						request.setAttribute("endString", endString) ;
						//ҳ��֮����ת��������������������
						RequestDispatcher dispatcher = request.getRequestDispatcher("/end.jsp") ;
						dispatcher.forward(request, response) ;
						System.out.println("����") ;
					}
					
				}
				
			}
			
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
