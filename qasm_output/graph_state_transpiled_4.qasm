OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
u1(pi/2) q[0];
rx(pi/2) q[0];
u1(pi/2) q[0];
cx q[0],q[1];
u1(pi/2) q[1];
rx(pi/2) q[1];
u1(pi/2) q[1];
cx q[0],q[2];
cx q[1],q[2];
u1(pi/2) q[2];
rx(pi/2) q[2];
u1(pi/2) q[2];
cx q[0],q[3];
cx q[1],q[3];
cx q[2],q[3];
u1(pi/2) q[3];
rx(pi/2) q[3];
u1(pi/2) q[3];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];
