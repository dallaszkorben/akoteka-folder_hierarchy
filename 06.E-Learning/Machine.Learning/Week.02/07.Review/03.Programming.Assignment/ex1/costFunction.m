function [jVal, gradient] = costFunction(theta)
    global m;
    global y;
    global X;
    jVal = (1/2*m)*(X*theta-y)'*(X*theta-y)
    gradient = 2*(X'*(X*theta-y))
