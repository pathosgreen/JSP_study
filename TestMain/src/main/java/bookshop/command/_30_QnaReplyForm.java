package bookshop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bookshop.bean.QnaDTO;
import bookshop.controller.CommandAction;
import bookshop.dao.QnaDAO;

public class _30_QnaReplyForm implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request,HttpServletResponse response) throws Throwable {
				
		int qna_id = Integer.parseInt(request.getParameter("qna_id"));
		
		//qna_id에 해당하는 QnA를 가져옴
		QnaDAO qnaProcess = QnaDAO.getInstance();
		QnaDTO qna  =  qnaProcess.updateGetArticle(qna_id);
		
		//QnA답변에 필요한 정보를 얻어냄
	
		int book_id = qna.getBook_id();
		
		String book_title = qna.getBook_title();
		String qna_content = qna.getQna_content();
		byte qora = 2;//답변글
		
		request.setAttribute("qna_id", qna_id);
		request.setAttribute("book_id", book_id);
		request.setAttribute("book_title", book_title);
		request.setAttribute("qna_content", qna_content);
		request.setAttribute("qora", qora);
		request.setAttribute("type", 0);
		
		return "/30_qnaReplyForm.jsp";
		
	}
	
}