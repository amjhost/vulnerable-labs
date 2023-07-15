# Vulnerable Applications Docker Lab

This Docker Compose project sets up a lab environment with multiple vulnerable applications for educational and testing purposes. The lab includes various web applications, API labs, IoT vulnerabilities, and a simulated SCADA system.

## Prerequisites

- Docker: Make sure you have Docker installed on your machine. You can download Docker from the official website: [https://www.docker.com/](https://www.docker.com/)

## Getting Started

1. Clone this repository to your local machine.

2. Open a terminal or command prompt and navigate to the project directory.

3. Run the following command to start the lab environment:


4. Docker Compose will pull the necessary base images, build the Docker images for the vulnerable applications, and start the containers.

5. Once the containers are up and running, you can access the vulnerable applications through the provided URLs.

## Usage and Access URLs

- NodeGoat: [http://localhost:3000](http://localhost:3000)
- Juice Shop: [http://localhost:4000](http://localhost:4000)
- WebGoat: [http://localhost:8080/WebGoat](http://localhost:8080/WebGoat)
- DVWA: [http://localhost](http://localhost)
- bWAPP: [http://localhost:81/install.php](http://localhost:81/install.php)
- DVWS: [http://localhost:82](http://localhost:82)
- WebGoat API: [http://localhost:8081/WebGoat](http://localhost:8081/WebGoat)
- Juice Shop API: [http://localhost:4001/api](http://localhost:4001/api)
- Insecure IoT: [http://localhost:8000](http://localhost:8000)
- SCADA: [http://localhost:9000](http://localhost:9000)

Please note that these applications are intentionally vulnerable and should only be used in controlled environments for educational or testing purposes.

## Stopping the Lab Environment

To stop the lab environment, go to the terminal or command prompt where the containers are running and press `Ctrl+C`. This will stop the containers and release the allocated resources.

## Customization

- If you want to add or modify any of the vulnerable applications, you can update the `docker-compose.yml` file accordingly.

- Feel free to modify the Dockerfile as needed for your specific requirements.

## Disclaimer

Please use this lab environment responsibly and only in controlled environments. The vulnerable applications included in this project have known security vulnerabilities and should not be exposed to untrusted networks or the public internet.

By using this lab environment, you accept full responsibility for any actions taken and any consequences that may result. The creators and contributors of this project disclaim any liability for any damages or misuse of this lab environment.

## License

This project is licensed under the [MIT License](LICENSE).
