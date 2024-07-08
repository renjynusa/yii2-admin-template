// var path = location.pathname.split('/')
// var url = location.origin + '/' + path[1]

// console.log(url)

// $('ul.nav-sidebar li.nav-item a.nav-link').each(function() {
//     if ($(this).attr('href').indexOf(url) !== -1) {
//         $(this).parent().addClass('active').parent().parent('a.nav-link').addClass('active')
//     }
// })


// $('.auth').remove();
const flashdata = $('.success').data('flashdata');
const flashdata2 = $('.error').data('flashdata');
const flashdataAuth = $('.auth').data('flashdata');
const flashdataLogin = $('.login-success').data('flashdata');

$(function () {


    $('textarea').summernote({
        height: 300,   
        charset: 'utf-8',
        // airMode: true,
        plugins: ['specialchars'],
        toolbar: [
            // [groupName, [list of button]]
            ['style', ['bold', 'italic', 'underline']],
            ['font', ['strikethrough', 'superscript', 'subscript']],
            // ['fontsize', ['fontsize']],
            // ['color', ['color']],
            ['para', ['ul', 'ol']],
            ['help', ['specialchars']]
            // ['height', ['height']]
        ],
    })

    if (flashdataAuth) {
        Swal.fire({
            icon: 'error',
            title: flashdataAuth,
            text: '',
            customClass: 'swal-wide', // agar bisa saya edit ukuran popupnya
        }).then((result) => {
            // Setelah SweetAlert ditutup, hapus flash message 'auth'
            if (result.isConfirmed) {
                $('.auth').remove();
            }
        });
    }

    // $(window).on("load", function() {
    //     // body...

    //     $(".loader").fadeOut(2000);
    // })

    // window.setTimeout(function() {
    //     $(".alert").fadeTo(1000, 0).slideUp(1000, function() {
    //       $(this).remove();
    //     });
    // }, 2000);

    // $("table.display").DataTable({
    //     "responsive": true,
    //     "lengthChange": false,
    //     "autoWidth": false,
    //     // "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    //     "buttons": ["excel", "pdf", "colvis"]
    // }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

    for (let i = 1; i <= 10; i++) {
        let tableId = "data-table" + i;
        let dataTableInit = {
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false,
            "buttons": ["excel", "pdf", "colvis"]
        };
        $(`#${tableId}`).DataTable(dataTableInit).buttons().container().appendTo(`#${tableId}_wrapper .col-md-6:eq(0)`);
    }


    // var Toast = Swal.mixin({
    //     toast: true,
    //     position: 'top-end',
    //     showConfirmButton: false,
    //     timer: 3000
    // });


    if (flashdataLogin) {
        Swal.fire({
            icon: 'success',
            title: 'Login Berhasil',
            text: 'Selamat Datang di CDU LABKESMAS',
            timer: 5000,
            customClass: 'swal-wide', // agar bisa saya edit ukuran popupnya
        })
    }


        

    if (flashdata) {
        // Toast.fire({
        //   icon: 'success',
        //   title: 'Success !',
        //   text: 'Data Berhasil ' + flashdata,
        // })
        Swal.fire({
            icon: 'success',
            title: 'Data Berhasil ' + flashdata,
            text: '',
            timer: 1000,
            customClass: 'swal-wide', // agar bisa saya edit ukuran popupnya
        })
    }

    if (flashdata2) {
        Swal.fire({
            icon: 'error',
            title: flashdata2,
            text: '',
            // timer: 1500,
            customClass: 'swal-wide', // agar bisa saya edit ukuran popupnya
        })
    }

    

    // Ketika Nonaktif
    $(".tombol-nonaktif").click(function (e) {
        console.log = e;
        e.preventDefault(); // untuk menghentikan href
        e.stopImmediatePropagation();
        const href = $(this).attr('href');
        Swal.fire({
            title: 'Apakah Anda Yakin?',
            text: "Anda Akan Menonaktifkan Data Ini!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Nonaktifkan',
            customClass: 'swal-wide',
        }).then((result) => {
            if (result.isConfirmed) {
                document.location.href = href;
            }
        })
    });

    // Ketika Aktifkan
    $(".tombol-aktif").click(function (e) {
        console.log = e;
        e.preventDefault(); // untuk menghentikan href
        e.stopImmediatePropagation();
        const href = $(this).attr('href');
        Swal.fire({
            title: 'Apakah Anda Yakin?',
            text: "Anda Akan Mengaktifkan Data Ini!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Aktifkan',
            customClass: 'swal-wide',
        }).then((result) => {
            if (result.isConfirmed) {
                document.location.href = href;
            }
        })
    });

    // Ketika Dihapus
    $(".tombol-hapus").click(function (e) {
        console.log = e;
        e.preventDefault(); // untuk menghentikan href
        e.stopImmediatePropagation();
        const href = $(this).attr('href');
        Swal.fire({
            title: 'Apakah Anda Yakin?',
            text: "Anda Akan Melakukan Penghapusan Pada Data Ini!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Hapus data',
            customClass: 'swal-wide',
        }).then((result) => {
            if (result.isConfirmed) {
                document.location.href = href;
            }
        })
    });

    // RESET DATA
    $(".tombol-reset").click(function (e) {
        console.log = e;
        e.preventDefault(); // untuk menghentikan href
        e.stopImmediatePropagation();
        const href = $(this).attr('href');
        Swal.fire({
            title: 'Apakah Anda Yakin?',
            text: "Anda Akan Melakukan Melakukan Fungsi Reset Pada Data Ini!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'RESET DATA',
            customClass: 'swal-wide',
        }).then((result) => {
            if (result.isConfirmed) {
                document.location.href = href;
            }
        })
    });

    $(".tombol-konfirmasi").click(function (e) {
        console.log = e;
        e.preventDefault(); // untuk menghentikan href
        e.stopImmediatePropagation();
        const href = $(this).attr('href');
        Swal.fire({
            title: 'Konfirmasi',
            text: "Anda Akan Melakukan Konfirmasi Pada Data Ini?",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes',
            customClass: 'swal-wide',
        }).then((result) => {
            if (result.isConfirmed) {
                document.location.href = href;
            }
        })
    });

    $(document).on('click', '.showModalButton', function () {
        //check if the modal is open. if it's open just reload content not whole modal
        //also this allows you to nest buttons inside of modals to reload the content it is in
        //the if else are intentionally separated instead of put into a function to get the
        //button since it is using a class not an #id so there are many of them and we need
        //to ensure we get the right button and content.
        
        if ($('#modal').data('bs.modal').isShown) {
            $('#modal').find('#modalContent')
                .load($(this).attr('value'));
                
            //dynamiclly set the header for the modal
            document.getElementById('modalHeader').innerHTML = '<h4>' + $(this).attr('title') + '</h4>';
        } else {
            //if modal isn't open; open it and load content
            $('#modal').modal('show')
                .find('#modalContent')
                .load($(this).attr('value'));
            //dynamiclly set the header for the modal
            document.getElementById('modalHeader').innerHTML = '<h4>' + $(this).attr('title') + '</h4>';
        }
    });

    // $('.swalDefaultInfo').click(function() {
    //   Toast.fire({
    //     icon: 'info',
    //     title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
    //   })
    // });
    // $('.swalDefaultError').click(function() {
    //   Toast.fire({
    //     icon: 'error',
    //     title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
    //   })
    // });
    // $('.swalDefaultWarning').click(function() {
    //   Toast.fire({
    //     icon: 'warning',
    //     title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
    //   })
    // });
    // $('.swalDefaultQuestion').click(function() {
    //   Toast.fire({
    //     icon: 'question',
    //     title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
    //   })
    // });

    var scrollToTopBtn = document.getElementById("scrollToTopBtn");

    // Tampilkan tombol saat scroll mencapai titik tertentu
    window.onscroll = function() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            scrollToTopBtn.style.display = "block";
        } else {
            scrollToTopBtn.style.display = "none";
        }
    };

    

    // Fungsi untuk melakukan smooth scroll ke atas
    function scrollToTop() {
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        });
    }

    // Tambahkan event listener untuk tombol scroll to top
    scrollToTopBtn.addEventListener("click", scrollToTop);

});