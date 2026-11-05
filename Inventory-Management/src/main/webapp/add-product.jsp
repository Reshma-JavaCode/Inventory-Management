<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product - Inventory Management</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body class="bg-light">

    <!-- Navigation Bar -->
    <nav class="navbar navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Inventory Management</a>
            <a href="dashboard" class="btn btn-outline-light btn-sm">Dashboard</a>
        </div>
    </nav>

    <!-- Product Form -->
    <div class="container mt-5">

        <div class="row justify-content-center">

            <div class="col-md-7 col-lg-6">

                <div class="card shadow">

                    <div class="card-header bg-primary text-white text-center">
                        <h4 class="mb-0">Add New Product</h4>
                    </div>

                    <div class="card-body p-4">

   						 <p class="text-success">${msg}</p>

                        <form action="${pageContext.request.contextPath}/product/save"
                              method="post">

                            <div class="mb-3">
                                <label class="form-label">Product Name</label>
                                <input type="text" name="productName"
                                       class="form-control"
                                       placeholder="Enter product name" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Category</label>
                                <select name="category" class="form-select" required>
                                    <option value="">Select Category</option>
                                    <option value="Electronics">Electronics</option>
                                    <option value="Clothing">Clothing</option>
                                    <option value="Furniture">Furniture</option>
                                    <option value="Groceries">Groceries</option>
                                    <option value="Others">Others</option>
                                </select>
                            </div>

                            <div class="row">

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Price</label>
                                    <input type="number" name="price"
                                           class="form-control"
                                           placeholder="Enter price"
                                           min="0" step="0.01" required>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Quantity</label>
                                    <input type="number" name="quantity"
                                           class="form-control"
                                           placeholder="Enter quantity"
                                           min="0" required>
                                </div>

                            </div>

                            <div class="mb-3">
                                <label class="form-label">Description</label>
                                <textarea name="description"
                                          class="form-control"
                                          rows="3"
                                          placeholder="Enter product description"></textarea>
                            </div>

                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-primary">
                                    Save Product
                                </button>

                                <button type="reset" class="btn btn-secondary">
                                    Clear
                                </button>
                            </div>

                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
    </script>

</body>
</html>
