(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10001011001010001001010)))
;; x should be Float32(0x4AC5944A [Rational(6474277), 6474277.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 6474277

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011000101100101000100101))
;; z should be 6474277

(assert (not (= y z)))
(check-sat)
(exit)
