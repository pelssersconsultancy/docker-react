# run docker build

$ docker build -f Dockerfile.dev .

# Run docker with mapped volumes

$ docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app <image_id>

docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app ebb2674147902243e0492ed156a114395551a4c235c629fb5f38021e30389dd2

docker run -it ebb2674147902243e0492ed156a114395551a4c235c629fb5f38021e30389dd2 npm run test

docker-compose -f docker-compose-dev.yml up
docker-compose -f docker-compose-dev.yml up --build
docker-compose -f docker-compose-dev.yml down
