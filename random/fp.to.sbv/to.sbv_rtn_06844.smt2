(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01110101001000111100000)))
;; x should be Float32(0xC9BA91E0 [Rational(-1528380), -1528380.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -1528380

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111010001010110111000100))
;; z should be -1528380

(assert (not (= y z)))
(check-sat)
(exit)
