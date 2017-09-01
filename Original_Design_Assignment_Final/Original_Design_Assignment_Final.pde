void setup()
{
  size(400,400);
frameRate (30);
}
 
//beak variables
int topBeakY = -10;
int botBeakY = -10;
int bx = 30;
int by = -10;
 
void draw ()
{
   background (3,3,3);
   body (0,0);
   head (30,-10);
    //beak
   stroke (3,3,3);
   fill (247,229,90);
   triangle (bx+21,by+100,bx+25,by+85,bx-10,topBeakY+100);
   triangle (bx+21,by+100,bx+25,by+115,bx-10,botBeakY+100);
    topBeakY = topBeakY-1;
       if(topBeakY<-30)
        {
          topBeakY = -10;
        }
    botBeakY = botBeakY +1;
       if (botBeakY>10)
        {
          botBeakY = -10;
        }
    //text
   fill (255,255,255);
   textSize (25);
   text ("Go Cardinals!",110,370);
}
 
void head (int hx,int hy)
{
    //head
   stroke (173,34,30);
   fill (173,34,30);
   ellipse (hx+80,hy+100,120,100);
    //head tuft
   triangle (hx+26,hy+73,hx+97,hy+13,hx+124,hy+65);
    //eye socket
   stroke (3,3,3);
   fill (3,3,3);
   ellipse (hx+30,hy+100,15,60);
   ellipse (hx+40,hy+90,40,25);
   triangle (hx+42,hy+83,hx+60,hy+93,hx+38,hy+108);
    //eye
   fill (255,255,255);
   ellipse (hx+30,hy+90,4,8);
}
 
void body (int bx,int by)
{
    //left leg
   fill (183,147,30);
   rect (bx+130,by+200,10,80);
   triangle (bx+131,by+280,bx+140,by+280,bx+160,by+290);
   triangle (bx+131,by+280,bx+140,by+280,bx+145,by+290);
   triangle (bx+131,by+280,bx+140,by+280,bx+110,by+290);
    //body
   stroke (137,12,10);
   fill (137,12,10);
   arc(bx+200,by+150,250,180,PI/8,10*PI/8,PIE);
   stroke (3,3,3);
   fill (3,3,3);
   triangle (bx+245,by+165,bx+300,by+205,bx+320,by+184);
    //right leg
   fill (183,147,30);
   rect (bx+180,by+230,10,80);
   triangle (bx+181,by+310,bx+190,by+310,bx+210,by+320);
   triangle (bx+181,by+310,bx+190,by+310,bx+195,by+320);
   triangle (bx+181,by+310,bx+190,by+310,bx+160,by+320);
    //wing
   fill (170,42,39);
   stroke (108,20,19);
   line (bx+140,by+100, bx+405,by+270);
   triangle (bx+140,by+100,bx+170,by+205,bx+405,by+270);
   fill (198,33,30);
   bezier(bx+140,by+100, bx+170,by+270,bx+170,by+170,bx+405,by+270);
   fill (224,26,23);
   arc (bx+180,by+165,200,110,11*PI/8, 17*PI/8, PIE);
}