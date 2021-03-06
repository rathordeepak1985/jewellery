$(function() {
	$.Class('defysope.addCustomerType.Main', {}, {
		init : function(el, options) {
			this.el = $(el);
			$.extend(this.options, options);
			$('span.saveTypeBtn', this.el).live('click',
					this.callback('addCustomerType'));
			$('span.deleteCType', this.el).live('click',
					this.callback('deleteCType'));
			$('span.editCType', this.el).live('click',
					this.callback('editCType'));

		},
		addCustomerType : function() {
			$('span.saveTypeBtn', this.el).addClass('disabled');
			$.ajax({
				url : 'saveCType.html',
				data : {

					description : $(':input[name="description"]', this.el)
							.val(),
					id : $(':input[name="description"]', this.el).data('id')
				},
				type : 'POST',
				error : function() {
					$('.saveTypeBtn', this.el).removeClass('disabled');
				}

			}).done(function(data) {
				$('.saveTypeBtn', this.el).removeClass('disabled');
				$(':input[name="description"]', this.el).data('id', 0);
				var tblCls = $('tr.row_' + data.savedType.id + ' td:eq(0)');
				if (tblCls.length > 0) {
					$(tblCls).text(data.savedType.description);

				} else {
					var html = '<tr class="row_'
							+ data.savedType.id
							+ '"><td>'
							+ data.savedType.description
							+ '</td><td><span class="btn btn-success editCType" data-id="'
							+ data.savedType.id
							+ '"><i class="icon-pencil"></i></span></td><td><span class="btn btn-danger deleteCType" data-id="'
							+ data.savedType.id
							+ '"><i class="icon-remove"></i></span></td></tr>';
					$('table.typeList').append(html);
				}
				$('span.saveTypeBtn', this.el).text('Add Type');
				$(':input[name="description"]').val('');
			});

		},

		deleteCType : function(e) {
			bootbox.confirm("Are you sure want to delete the selected ?",
					function(confirmed) {
						if (confirmed) {
							var el = $(e.currentTarget);
							var id = $(el).data('id');
							$.ajax({
										url : 'deleteCType.html',
										data : {

											id : id
										},
										type : 'POST',
										msgprocessing : {
											hideMessage : true
										}
									}).done(function(data) {
								if (data.success) {
									var el = $('table.typeList');
									$('tr.row_' + id, el).remove();
								} else {
									alert("Error occured while process the request.");
								}

							});
						}
					});

		},
		editCType : function(e) {
			var el = $(e.currentTarget);
			var id = $(el).data('id');
			$(':input[name="description"]').data('id', id);
			var tempEl = $("tr.row_" + id + " td:eq(0)").text();
			$(':input[name="description"]').val(tempEl);

			$('span.saveTypeBtn', this.el).text('Update Type');

		}

	});
});