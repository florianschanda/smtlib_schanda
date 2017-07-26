(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01000101100010011100011)))
;; x should be Float32(0x4AA2C4E3 [Rational(10667235, 2), 5333617.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be 5333617

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010100010110001001110001))
;; z should be 5333617

(assert (not (= y z)))
(check-sat)
(exit)
