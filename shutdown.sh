#!/bin/bash

JAR_NAME="helloSpringboot-0.0.1-SNAPSHOT.jar"

PID=$(ps -ef | grep "$JAR_NAME" | grep -v grep | awk '{print $2}')

if [ -z "$PID" ]; then
  echo "✅ $JAR_NAME 프로세스가 실행 중이지 않습니다."
else
  echo "🔍 $JAR_NAME 프로세스 PID: $PID"
  kill -9 "$PID"
  echo "🛑 프로세스 종료 완료"
fi
