function searchAccById() {
    var accId = $("#search-field").val();
    $.ajax({
        url : "http://localhost:8080/AccountService/accounts/" + accId,
        success : function(data) {
            $('#error').html('').hide();

            $('#account-table tr').not(':first').not(':last').remove();
            var html = '';
            html += '<tr><td>' + data.id +
                '</td><td>' + data.surname +
                '</td><td>' + data.name +
                '</td><td>' + data.father +
                '</td><td>' + data.sum +
                '</td><td><a href="operations/' + data.id + '">Просмотр операций</a>' +
                '<a href="perform-operation/' + data.id + '">Выполнить операцию</a>'
                + '</td></tr>';
            $('#account-table tr').first().after(html);
        },
        error : function(request, status, error) {
            $('#error').html(request.responseText).show();
        }
    })
}

function watchOperations(accId) {
    $.ajax({
        url : "http://localhost:8080/AccountService/operations/" + accId,
        success : function(data) {
            $('#operations-table tr').not(':first').not(':last').remove();
            var html = '';
            for (var i = 0; i < data.length; i++) {
                html += '<tr><td>' + data[i].id +
                '</td><td>' + data[i].sourceAccId +
                '</td><td>' + data[i].destAccId +
                '</td><td>' + data[i].sum +
                '</td><td>' + data[i].date +
                '</td><tr>';
            }
            $('#operations-table tr').first().after(html);
        }
    })
}

function performOperation(sourceAccId) {
    $('#error').html('');
    var operation = {};
    operation.sourceAccId = sourceAccId;
    operation.destAccId = $('#destAccId').val();
    if (operation.destAccId.length == 0) {
        $('#error').html('Поле счёта получателя не может быть пустым');
        return;
    }
    operation.sum = $('#sum').val();
    if (operation.sum.length == 0) {
        $('#error').html('Поле суммы перевода не может быть пустым')
    }
    console.log(operation);
    $.ajax({
        url : 'http://localhost:8080/AccountService/operations/new',
        type : 'POST',
         contentType : "application/json",
          data : JSON.stringify(operation),
          success : function(data) {
              $('#operation-form input[type="text"]').val('');
          },
          error : function(request, status, error) {
              $('#error').html(request.responseText);
          },
          done : function(data) {
              console.log('Done.');
          }
    });
}