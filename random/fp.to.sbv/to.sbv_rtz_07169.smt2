(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00001000101010000111001)))
;; x should be Float32(0xCA845439 [Rational(-8672313, 2), -4336156.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -4336156

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101111011101010111100100))
;; z should be -4336156

(assert (not (= y z)))
(check-sat)
(exit)
