settings.outformat="pdf";
size(4cm); 
// draw(unitsquare);
real x1 = 0.15;
real y1 = 0.85;
string lb;
for(int i=1;i<6;i=i+1){
    for(int j=1;j<6;j=j+1){
        if (i<5 && j <5){
            lb = "$x_{" + ((string) i) + ((string) j) + "}$";
        }else {
            lb = "$\cdots$";
        }
        label(lb, (x1+0.13*i, y1-0.13*j)); 
    }
    if (i<5) {
        path q0=(0.15+0.1, y1-0.13*(i+1)+0.1)..(x1+0.13*(i+1)-0.1, 0.85-0.1);
        draw(q0,Arrow(TeXHead, Relative(1.01))); 
    }
}