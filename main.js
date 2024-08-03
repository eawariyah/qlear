window.onload = function() {
    const url = window.location.href; // Get the current website URL
    const qrcodeContainer = document.getElementById('qrcode');

    QRCode.toCanvas(qrcodeContainer, url, { width: 200, height: 200 }, function (error) {
        if (error) console.error(error);
        console.log('QR code generated!');
    });
};
