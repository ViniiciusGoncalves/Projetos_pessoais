
const video = document.getElementById('video') // Pegando o nosso ID "video" do HTML

function startVideo() { //criar função para conectar a nossa webcam ao nosso elemento de video
    navigator.getUserMedia( // Para obter a webcam precisamos usar o "navigator.getUserMedia"
        { video: {} },
        stream => video.srcObject = stream, //Aqui é um metodo que se chama "stream", e vamos dizer que "srcObject" sera igual a esse fluxo 
        err => console.error(err) // Aqui vai ser apenas uma função de erro, se objetivermos um erro vai apenas registrar
    )
}

Promise.all([ //Importando os modelos que iremos usar no projeto
    faceapi.nets.tinyFaceDetector.loadFromUri('/assets/lib/face-api/models'), //Vai ser Utilizada para Detectar Rosto 
    faceapi.nets.faceLandmark68Net.loadFromUri('/assets/lib/face-api/models'),//Ela vai desenhar os traços do rosto
    faceapi.nets.faceRecognitionNet.loadFromUri('/assets/lib/face-api/models'),//Reconhecimento Dentro do Rosto
    faceapi.nets.faceExpressionNet.loadFromUri('/assets/lib/face-api/models'),//Detectar Expressões
    faceapi.nets.ageGenderNet.loadFromUri('/assets/lib/face-api/models'),//Detectar Idade e gênero
    faceapi.nets.ssdMobilenetv1.loadFromUri('/assets/lib/face-api/models'),//Ela vai ser usada internamente para desenhar o rosto
]).then(startVideo)

video.addEventListener('play', async () => { //Vai adicionar Eventos quando o nosso video começar 
    const canvas = faceapi.createCanvasFromMedia(video) //Faceapi criou um canvas para colocar todas as informações que estou utilizando
    document.body.append(canvas) //Adicionando o canvas na nossa pagina
    const displaySize = { width: video.width, height: video.height }
    faceapi.matchDimensions(canvas, displaySize) //Colocando o canvas do mesmo tamanho que minha camera de video
    setInterval(async () => { // Definição de intervalo para executar o código varias vezes seguidas
        const detections = await faceapi.detectAllFaces(video, //"detections = detectar todas as faces"
            new faceapi.TinyFaceDetectorOptions())
            .withFaceLandmarks()
            .withFaceExpressions()
            .withAgeAndGender()
        console.log(detections)
        const resizedDetections = faceapi.resizeResults(detections, displaySize) //Adaptando  o detection com as informaçõs do meu rosto
        canvas.getContext('2d').clearRect(0, 0, canvas.width, canvas.height) //limpando as informações do canvas
        faceapi.draw.drawDetections(canvas, resizedDetections)
        faceapi.draw.drawFaceLandmarks(canvas, resizedDetections)
        faceapi.draw.drawFaceExpressions(canvas, resizedDetections)
        resizedDetections.forEach(detection => {
            const { age, gender } = detection //Pegando algumas informações 
            new faceapi.draw.DrawTextField([ //Desenhando as informações 
                `${parseInt(age, 10)} years`,
                `${gender}`
            ], detection.detection.box.topRight).draw(canvas, resizedDetections) //Desenhando a nossa faceapi
        })
    }, 100)
})