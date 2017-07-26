(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTN +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AA2C4E2)))
;; x should be Float32(0x4AA2C4E2 [Rational(5333617), 5333617.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 5333617

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010100010110001001110001))
;; z should be 5333617

(assert (not (= y z)))
(check-sat)
(exit)
