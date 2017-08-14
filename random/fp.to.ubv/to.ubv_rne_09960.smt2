(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +ubv_8_bound)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000110 #b11111101000000000000000)))
;; x should be Float32(0x437E8000 [Rational(509, 2), 254.500000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RNE x)))
;; y should be 254

(declare-const z (_ BitVec 8))
(assert (= z #b11111110))
;; z should be 254

(assert (not (= y z)))
(check-sat)
(exit)
