document.addEventListener("DOMContentLoaded", function() {
        // Get the modal element
        var modal = document.getElementById('addProductModal');

        // Get the button that opens the modal
        var btn = document.getElementById("openModalBtn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // Function to open the modal
        function openModal() {
            modal.style.display = "block";
        }

        // Function to close the modal
        function closeModal() {
            modal.style.display = "none";
        }

        // When the user clicks on the button, open the modal
        btn.onclick = openModal;

        // When the user clicks on <span> (x), close the modal
        span.onclick = closeModal;

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                closeModal();
            }
        }

        // Function to filter the table
        function filterTable() {
            var input, filter, table, tr, td, i, j, txtValue;
            input = document.getElementById("filter");
            filter = input.value.toUpperCase();
            table = document.getElementById("products");
            tr = table.getElementsByTagName("tr");
            for (i = 1; i < tr.length; i++) {
                var display = false;
                td = tr[i].getElementsByTagName("td");
                for (j = 0; j < td.length; j++) {
                    if (td[j]) {
                        txtValue = td[j].textContent || td[j].innerText;
                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                            display = true;
                            break;
                        }
                    }
                }
                if (display) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }

        // Attach the filter function to the input field's keyup event
        document.getElementById("filter").addEventListener("keyup", filterTable);
    });
// JavaScript function to fetch categories asynchronously
// Function to fetch categories asynchronously
function fetchCategories() {
    fetch('/categories') // Assuming this route returns JSON data with categories
        .then(response => response.json())
        .then(data => {
            const select = document.querySelector('select[name="category"]');
            select.innerHTML = '<option>select category</option>'; // Clear previous options
            data.categories.forEach(category => {
                const option = document.createElement('option');
                option.value = category.id;
                option.textContent = category.name;
                select.appendChild(option);
            });
        })
        .catch(error => console.error('Error fetching categories:', error));
}

// Execute the JavaScript code when the document is fully loaded
document.addEventListener('DOMContentLoaded', function() {
    // Fetch categories when the page is loaded
    fetchCategories();

    // Event listener for when category selection changes
    document.getElementById('categorySelect').addEventListener('change', function() {
        // Get the selected category ID
        const selectedCategoryId = this.value;
        
        // Set the selected category ID to the hidden input field
        document.getElementById('selectedCategoryId').value = selectedCategoryId;
    });
});

// JavaScript function to handle when the modal is shown
function handleModalShown() {
    fetchCategories(); // Fetch categories when modal is shown
}
//edit product
//when save changes button appear, hide edit 
// Add event listener to all edit buttons
document.querySelectorAll('.edit-btn').forEach(function(button) {
    button.addEventListener('click', function() {
        var row = this.closest('tr');
        row.querySelectorAll('.original-content').forEach(function(content, index) {
            var originalWidth = content.offsetWidth;
            content.style.display = 'none';
            var input = row.querySelectorAll('.edit-input')[index];
            input.style.display = 'inline-block';
            var inputWidth = originalWidth + 30; // Add 10 pixels to the original width
            input.style.backgroundColor = '#f0f0f0'; 
            input.style.width = inputWidth + 'px'; // Set the width of the input to original width + 10 pixels
        });
        // Show the save button for this row
        row.querySelector('.edit-input.save-button').style.display = 'inline-block';
    });
});

// Add event listener to the save button
document.getElementById('save').addEventListener('click', function() {
    // Loop through all rows and save changes if editing was activated
    document.querySelectorAll('.edit-input.save-button').forEach(function(saveButton) {
        var row = saveButton.closest('tr');
        // Your saving logic goes here...
        // For demonstration purposes, let's just log a message
        console.log("Changes saved for row: " + row);
    });
});
