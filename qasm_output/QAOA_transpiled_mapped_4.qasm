OPENQASM 2.0;
include "qelib1.inc";
qreg q[5];
creg meas[4];
u1(pi/2) q[0];
rx(pi/2) q[0];
u1(pi/2) q[0];
u1(pi/2) q[1];
rx(pi/2) q[1];
u1(pi/2) q[1];
u1(pi/2) q[2];
rx(pi/2) q[2];
u1(pi/2) q[2];
u1(pi/2) q[3];
rx(pi/2) q[3];
u1(pi/2) q[3];
cx q[2],q[3];
u1(5.61857829858841) q[3];
cx q[2],q[3];
cx q[1],q[2];
cx q[2],q[1];
cx q[1],q[2];
cx q[0],q[1];
u1(5.61857829858841) q[1];
cx q[1],q[0];
cx q[0],q[1];
rx(0.633370407850711) q[0];
cx q[2],q[3];
u1(5.61857829858841) q[3];
cx q[2],q[3];
cx q[1],q[2];
u1(5.61857829858841) q[2];
cx q[1],q[2];
rx(0.633370407850711) q[1];
rx(0.633370407850711) q[2];
rx(0.633370407850711) q[3];
barrier q[1],q[3],q[0],q[4],q[2];
measure q[3] -> meas[0];
measure q[0] -> meas[1];
measure q[2] -> meas[2];
measure q[1] -> meas[3];
