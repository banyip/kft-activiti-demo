<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
			<c:forEach items="${page.result }" var="student"> 
				<tr id="${student.id }">
				    <td>${student.auditNo }</td>
				    <td>${student.studentName }</td>

					<td>${student.applyTime }</td>
                    <td><a class="handle" tkey='editstudent' tname='ÐÞ¸Ä' href="#">ÐÞ¸Ä</a>
                        <a class="deleterow" tname=É¾³ý href="#">É¾³ý</a>
					</td>
				</tr>
			</c:forEach>
