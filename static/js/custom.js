document.addEventListener('DOMContentLoaded', function() {
    // Find all edit buttons and attach event listener
    var editButtons = document.querySelectorAll('.edit-btn');
    editButtons.forEach(function(btn) {
      btn.addEventListener('click', function() {
        // Handle edit functionality here
        // You can trigger a modal or navigate to an edit page, etc.
        console.log('Edit button clicked');
      });
    });

    // Find all delete buttons and attach event listener
    var deleteButtons = document.querySelectorAll('.delete-btn');
    deleteButtons.forEach(function(btn) {
      btn.addEventListener('click', function() {
        // Handle delete functionality here
        // You can prompt a confirmation dialog or directly delete the item, etc.
        console.log('Delete button clicked');
      });
    });
  });
