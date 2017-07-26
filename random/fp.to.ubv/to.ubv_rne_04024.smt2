(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10001011001010001001000)))
;; x should be Float32(0x4AC59448 [Rational(6474276), 6474276.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be 6474276

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011000101100101000100100))
;; z should be 6474276

(assert (not (= y z)))
(check-sat)
(exit)
