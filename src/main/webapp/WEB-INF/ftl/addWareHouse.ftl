<#import "/spring.ftl" as spring />
<#import "macro.ftl" as macro/>

<@macro.showHeader />
<div class="inner-col" id ="mainDiv">
	<div>
        <h3>Add Roles</h3>
    </div>
    <div class="row-fluid">
		<div class="span12">
			<table class="table">
				<tr>
					<td class="td-10">Warehouse Name</td>
					<td class="td-15"><input type="text" class="input-large" name="wareHouseName" id="wareHouseName" data-id="0"/></td>
					<td><span class="btn btn-primary saveWareBtn" style="vertical-align:top;">Add</span></td>
				</tr>
			</table>
		</div>
    </div>
    
    <div class="row-fluid">
    	<div class="span12">
    		<table class="table table-bordered houseList" name="houseList">
    			<tr>
    				<td class="center">Ware House</td>
    				<td class="center td-5">Edit</td>
    				<td class="center td-5">Delete</td>
    			</tr>
    			<#if wareList?exists>
    			<#list houseList as ware>
    			<tr class="row_${ware.id}">
    				<td>${ware.warehouse}</td>
    				<td class="center td-5"><span class="btn btn-success editWarehouse" data-id="${ware.id}"><i class="icon-pencil"></i></span></td>
    				<td class="center td-5"><span class="btn btn-danger deleteWarehouse" data-id="${ware.id}"><i class="icon-remove"></i></span></td>
    			</tr>
    			</#list>
    			</#if>
    		</table>
    	</div>
    </div>
    
</div>
<@macro.showFooter>
	<script type="text/javascript" src="${rc.getContextPath()}/resources/js/pages/addWarehouse.js"></script>
	<script>
		$(function(){
			new defysope.addWarehouse.Main("#mainDiv", {
			});
		});
	</script>
</@macro.showFooter>
