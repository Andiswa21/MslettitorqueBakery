<%@page import="java.util.List"%>
<%@page import="com.lettitorque.Lettitorque.model.Payment"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Selected Payment | Lettitorque</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="css/selected_appointment.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card mt-5">
                <div class="card-header">
                    <h3 class="text-center">Selected Payment</h3>
                </div>
                <div class="card-body">
                    <%
                        Payment payment = (Payment) session.getAttribute("payment");
                        byte[] receiptContent = (byte[]) payment.getReceipt();

                        if (receiptContent != null && receiptContent.length > 0) {
                            String base64EncodedReceipt = new String(java.util.Base64.getEncoder().encode(receiptContent));
                    %>
                            <p>Payment Number: ${payment.getPmtId()}</p>
                            <br/>
                            <p>Proof Of Payment</p>
                            <embed src="data:application/pdf;base64, <%= base64EncodedReceipt %>" type="application/pdf" width="100%" height="500px">
                            <br/>
                            <p>Amount paid: R ${payment.getTotAmt()}</p>
                    <%
                        } else {
                    %>
                            <p>No receipt available.</p>
                    <%
                        }
                    %>

                    <br/><br/>

                    <form action="ConfirmPayment" method="POST">
                        <input type="hidden" name="pmtId" value=<%=pmtId%> />

                        <div class="mb-3">
                            <label for="status" class="form-label">Status:</label>
                            <select class="form-select" name="status" id="status">
                                <option value="true">TRUE</option>
                                <option value="false">FALSE</option>
                            </select>
                        </div>
                        <br/>
                        <div class="mb-3">
                            <label for="statusDesc" class="form-label">Reason for status:</label>
                            <input type="textarea" class="form-control" id="statusDesc" name="statusDesc" placeholder="Reason" />
                        </div>
                        <br/>
                        <button type="submit" class="btn btn-primary">CONFIRM</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<br/><br/>

<footer class="mt-5">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-auto">
                © 2024 Lettitorque. All rights reserved.
            </div>
            <div class="col-auto">
                employee
            </div>
        </div>
    </div>
</footer>
</body>
</html>
