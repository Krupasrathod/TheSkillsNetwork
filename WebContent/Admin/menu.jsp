<div class="page-sidebar-wrapper">
		<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
		<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
		<div class="page-sidebar navbar-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->
			<!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
			<!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
			<!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
			<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
			<!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
			<!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
			<ul class="page-sidebar-menu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
				
				<li class="start ">
					<a href="<%=request.getContextPath()%>/Admin/homepage.jsp">
					<i class="icon-home"></i>
					<span class="title">Home</span>
					</a>
				</li>
				
				<li>
					<a href="javascript:;">
					<i class="icon-basket"></i>
					<span class="title">Create Group</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="">
							<i class="icon-home"></i>
							Closed/Open Up</a>
						</li>
						<li>
							<a href="ecommerce_orders.html">
							<i class="icon-basket"></i>
							Nominate Administration</a>
						</li>
						<li>
							<a href="ecommerce_orders_view.html">
							<i class="icon-tag"></i>
							Group Discussion</a>
						</li>
						
					</ul>
				</li>
				
				<li class="start ">
					<a href="<%=request.getContextPath()%>/RegistrationController?flag=search">
					<i class="icon-home"></i>
					<span class="title">Total User </span>
					</a>
				</li>
				
				<li class="start ">
					<a href="<%=request.getContextPath()%>/RegistrationController?flag=search">
					<i class="icon-home"></i>
					<span class="title">Hiring Manager</span>
					</a>
				</li>
				
				<li>
					<a href="javascript:;">
					<i class="icon-basket"></i>
					<span class="title">User Types</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
						<a href="<%=request.getContextPath()%>/RegistrationController?flag=trainer">
						<i class="icon-rocket"></i>
						Trainer"s Console</a>
					
				</li>
						<li>
							<a href="<%=request.getContextPath()%>/RegistrationController?flag=trainee">
							<i class="icon-basket"></i>
							Trainee"s Console</a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/RegistrationController?flag=manager">
							<i class="icon-tag"></i>
							Manager's Console</a>
						</li>
						
					</ul>
				</li>
				
				<li class="start ">
					<a href="">
					<i class="icon-home"></i>
					<span class="title">Recruiters</span>
					</a>
				</li>
				
				<li>
					<a href="javascript:;">
					<i class="icon-rocket"></i>
					<span class="title">Forums</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="layout_sidebar_reversed.html">
							Question & Answer</a>
						</li>
						<li>
							<a href="layout_sidebar_fixed.html">
							Articles</a>
						</li>
					</ul>
				</li>
				
				<li class="start ">
					<a href="">
					<i class="icon-home"></i>
					<span class="title">Mentoring</span>
					</a>
				</li>
				
				<li>
					<a href="javascript:;">
					<i class="icon-rocket"></i>
					<span class="title">Consulting</span>
					<span class="arrow "></span>
					</a>
					<ul class="sub-menu">
						<li>
							<a href="layout_sidebar_reversed.html">
							Consult</a>
						</li>
						<li>
							<a href="layout_sidebar_fixed.html">
							Client</a>
						</li>
					</ul>
				</li>
				
				<li class="start ">
					<a href="<%=request.getContextPath()%>/formController?flag=searchSubject">
					<i class="icon-home"></i>
					<span class="title">Add Skills</span>
					</a>
				</li>
				
				<li class="start ">
					<a href="<%=request.getContextPath()%>/Admin/register.jsp">
					<i class="icon-rocket"></i>
					<span class="title">Create An Account</span>
					</a>
				</li>
				
				<li>
					<a href="javascript:;">
					<i class="icon-basket"></i>
					<span class="title">Location</span>
					<span class="arrow"></span>
					</a>
				<ul class="sub-menu">
				<li class="start ">
					<a href="<%=request.getContextPath()%>/countryController?flag=countryList">
					<i class="icon-rocket"></i>
					<span class="title">Country</span>
					</a>
				</li>
				<li class="start ">
					<a href="<%=request.getContextPath()%>/countryController?flag=stateList">
					<i class="icon-rocket"></i>
					<span class="title">State</span>
					</a>
				</li>
				<li class="start ">
					<a href="<%=request.getContextPath()%>/countryController?flag=citylist">
					<i class="icon-rocket"></i>
					<span class="title">City</span>
					</a>
				</li>
				</ul>
				</li>
				
				<%-- <li>
					<a href="javascript:;">
					<i class="icon-basket"></i>
					<span class="title">Add Country/State/City</span>
					<span class="arrow"></span>
					</a>
				<ul class="sub-menu">
				<li class="start ">
					<a href="<%=request.getContextPath()%>/Admin/addCountry.jsp">
					<i class="icon-rocket"></i>
					<span class="title">Add Country</span>
					</a>
				</li>
				<li class="start ">
					<a href="<%=request.getContextPath()%>/countryController?flag=searchCountry">
					<i class="icon-rocket"></i>
					<span class="title">Add State</span>
					</a>
				</li>
				<li class="start ">
					<a href="<%=request.getContextPath()%>/countryController?flag=searchState">
					<i class="icon-rocket"></i>
					<span class="title">Add City</span>
					</a>
				</li>
				</ul>
				</li> --%>
				
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
	</div>