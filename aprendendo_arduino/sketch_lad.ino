void setup() {
  // put your setup code here, to run once:
  pinMode(13,OUTPUT);
  pinMode(12,OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  escrevendoFixo(13,12,500);
  escrevendoBlink(13,12,1500);
  
  
}

void escrevendoFixo(int pino1,int pino2, int time){
  digitalWrite(pino1,HIGH);
  digitalWrite(pino2,HIGH);
  delay(time);
  digitalWrite(pino1,LOW);
  digitalWrite(pino2,LOW);
  delay(time);
}

void escrevendoBlink(int pino1,int pino2, int time){
  digitalWrite(pino1,HIGH);
  delay(time);  
  digitalWrite(pino2,HIGH);
  delay(time);
  digitalWrite(pino1,LOW);
  delay(time);
  digitalWrite(pino2,LOW);
  delay(time);
}
