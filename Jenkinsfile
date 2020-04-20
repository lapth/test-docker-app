pipeline {
    agent any
    stages {
        stage('Build') {
	        agent {
		        docker {
		            image 'maven:3-alpine'
		            args '-v m2_repos:/root/.m2'
		        }
		    }
            steps {
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Test') {
            steps {
                echo "Testing!"
            }
            
        } 
        stage('Deploy') {
            steps {
            	sh "ssh docker@192.168.99.101 rm -rf /home/docker/wildfly_deployments/*" 
            	sh "scp target/test-docker-app-1.0.war docker@192.168.99.101:/home/docker/wildfly_deployments/"
            	/*sh 'bash ./deploy.sh'*/
            }
            
        } 
    }
}
