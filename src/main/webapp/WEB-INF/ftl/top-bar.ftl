<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner container">
        <div class="container">
	          <a data-target=".navbar-inverse-collapse" data-toggle="collapse" class="btn btn-navbar collapsed">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	         </a>
			<a class="brand" href="#">Defysope Inventory</a>
			<div class="nav-collapse navbar-inverse-collapse collapse" style="height: 0px;">
        	<ul class="nav">
                      <li><a href="#">Dashboard</a></li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">Purchase <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li class="nav-header">Transactions</li>
                          <li><a href="${rc.getContextPath()}/inventory/addPurchase.html">Add Purchase</a></li>
                          <li><a href="#">View Purchase</a></li>
                          <li class="divider"></li>
                          <li class="nav-header">Suppliers</li>
                          <li><a href="${rc.getContextPath()}/inventory/addSupplier.html">Add Suppliers</a></li>
                          <li><a href="#">View Suppliers</a></li>
                          <li class="divider"></li>
                          <li class="nav-header">Report</li>
                          <li><a href="#">Purchase Report</a></li>
                         </ul>
                      </li>
                      
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">Sales <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                        	<#list pagePermissions as page>
                          		<li><a href="${rc.getContextPath()}${page.url}">${page.description}</a></li>
                          	</#list>
                         </ul>
                      </li>
                      
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">Inventory <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li><a href="${rc.getContextPath()}/inventory/addProduct.html">Add Product</a></li>
                          <li><a href="${rc.getContextPath()}/inventory/viewProduct.html">View Products</a></li>
                          <li class="divider"></li>
                          <li><a href="#">View Stock on hand</a></li>
                          <li><a href="#">View Out of stock</a></li>
                          </ul>
                      </li>
                   
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">Settings <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li class="nav-header">Security</li>
                          <li><a href="${rc.getContextPath()}/inventory/adduser.html">Add Users</a></li>
                          <li><a href="${rc.getContextPath()}/addRole.html">Add Roles</a></li>
                          <li><a href="${rc.getContextPath()}/inventory/accessRights.html">Set Page Access</a></li>
                          <li class="divider"></li>
                          <li class="nav-header">Settings</li>
                          <li><a href="${rc.getContextPath()}/inventory/financialMonth.html">Financial Month</a></li>
                          <li><a href="${rc.getContextPath()}/addUOM.html">UOM</a></li>
                          <li><a href="${rc.getContextPath()}/addCompany.html">Company</a></li>
                          <li><a href="${rc.getContextPath()}/addProductGroup.html">Product Group</a></li>
                          <li><a href="${rc.getContextPath()}/addTaxes.html">Taxes</a></li>
                           <li><a href="${rc.getContextPath()}/addFinancialYear.html">Financial Year</a></li>
                            <li><a href="${rc.getContextPath()}/addWarehouse.html">WareHouse</a></li>
                            <li><a href="${rc.getContextPath()}/addDeliveryMethod.html">Delivery Method</a></li>
                            <li><a href="${rc.getContextPath()}/addBoardRate.html">Board Rate</a></li>
                          <li><a href="#">Billings</a></li>
                        
                           <li><a href="${rc.getContextPath()}/addBrand.html">Brand</a></li>
                          <li><a href="${rc.getContextPath()}/addCustomerType.html">Customer Type</a></li>
                           <li><a href="${rc.getContextPath()}/inventory/addDiscount.html">Discount Setting</a></li>
                          </ul>
                      </li>
                    </ul>
                    <ul class="nav pull-right">
                      <li class="dropdown open">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">Welcome <#if user?exists>${user.getUerName()}<#else>2</#if> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                          <li><a href="#">Edit Profile</a></li>
                          <li><a href="#">Setting</a></li>
                          <li><a href="#">Log Out</a></li>
                        </ul>
                      </li>
                    </ul>
                 </div> 
         </div>
       </div>
</div>        
