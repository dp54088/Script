pipeline {
	agent{
		label "Production"
	}
	
	stages {
		stage('Build') {
			steps {
				echo 'Building'
			}
		}
		
		stage('Test') {
			steps {
				echo 'Testing'
			}
		}
		
		stage('Deploy - Staging') {
			steps {
				echo './deploy staging'
				echo './run-smoke-tests'
			}
		}
		
		stage('Sanity check'){
			steps {
				input "Does the staging environment look ok?"
			}
		}
		stages('Deploy - Production') {
			steps {
				echo './deploy production'
			}
		}
	}
	
	
	post {
		always {
			echo 'One way or another, I have finiechoed'
			deleteDir() /* clean up our workspace */
		}
	
		success {
			echo 'I success!'
		}
	
		unstable {
			echo 'I am unstable :/'
		}
		
		failure {
			echo 'I failed :('
		}
	
		changed {
			echo 'Things were different before...'
		}
	}	
}
