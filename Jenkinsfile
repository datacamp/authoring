node {
  checkout scm
  def RELEASE = sh (
        script: 'git rev-parse HEAD',
        returnStdout: true
    ).trim()

  stage('Building') {
    def buildEnv = (env.BRANCH_NAME == 'master') ? "staging" : "dev"

    echo 'Building....'

    sh 'cp ~/.ssh/id_rsa id_rsa'

    sh "./jenkins/docker.sh ${RELEASE}"

    sh 'rm id_rsa'

    sh './jenkins/git-commit.sh'
  }

  stage('Deploy') {
    try {
      sh 'git remote rm heroku'
    } catch (Exception e) { 
      echo 'no remote yet'
    }

    echo 'Adding heroku remote'
    sh 'git remote add heroku ssh://git@heroku.com/teach-documentation.git'

    echo 'Pushing to heroku'
    sh 'git push heroku HEAD:refs/heads/master --force'
    sh "git reset --hard ${RELEASE}"
  }
}
