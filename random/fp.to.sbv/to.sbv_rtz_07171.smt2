(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00001000101010000111010)))
;; x should be Float32(0xCA84543A [Rational(-4336157), -4336157.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -4336157

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101111011101010111100011))
;; z should be -4336157

(assert (not (= y z)))
(check-sat)
(exit)
