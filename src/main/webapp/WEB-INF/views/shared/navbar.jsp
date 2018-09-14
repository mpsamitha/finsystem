 <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="<c:url value='/' />">ABC Financial</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
          
            <li class="nav-item active">
              <a class="nav-link" href="<c:url value='/' />">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Master
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="<c:url value='/new' />">Employee</a>
                <a class="dropdown-item" href="#">Customer</a>
                <a class="dropdown-item" href="<c:url value='/newbranch' />">Branch</a>
                <a class="dropdown-item" href="#">Account Types</a>
                <a class="dropdown-item" href="#">Loan Types</a>
              </div>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Services
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="<c:url value='/new' />">Account Open</a>
                <a class="dropdown-item" href="#">Loan Issue</a>
                <a class="dropdown-item" href="#">Card Issue</a>
                <a class="dropdown-item" href="#">Account Deactivate</a>
                <a class="dropdown-item" href="#">Card Deactivate</a>
                <a class="dropdown-item" href="#">Loan close</a>
              </div>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Transaction
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                <a class="dropdown-item" href="<c:url value='/new' />">Saving(Crediting)</a>
                <a class="dropdown-item" href="#">Debit</a>
                <a class="dropdown-item" href="#">Transfer</a>
                <a class="dropdown-item" href="#">Cheque Receive</a>
                <a class="dropdown-item" href="#">Slip Receive</a>
              </div>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="<c:url value='/contact' />">Contact</a>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>