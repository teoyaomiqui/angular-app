
node('docker') {
    git poll: true, url: 'https://github.com/teoyaomiqui/angular-app'
    checkout scm
    def angularApp = docker.build("my-image:${env.BUILD_ID}")

    angularApp.inside {
        sh './test.sh'
    }
}
