<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
			<c:forEach items="${page.result }" var="student"> 
				<tr id="${student.id }">
				    <td>${student.auditNo }</td>
				    <td>${student.studentName }</td>

					<td>${student.applyTime }</td>
                    <td><a class="handle" tkey='editstudent' tname='�޸�' href="#">�޸�</a>
                        <a class="deleterow" tname=ɾ�� href="#">ɾ��</a>
					</td>
				</tr>
			</c:forEach>
