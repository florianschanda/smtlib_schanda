(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -sbv_8_bound)
(declare-const x Float32)
(assert (= x (fp #b1 #b10000110 #b00000001000000000000000)))
;; x should be Float32(0xC3008000 [Rational(-257, 2), -128.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be -129

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111111111111111101111111))
;; z should be -129

(assert (not (= y z)))
(check-sat)
(exit)
