(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01100010101110100101010)))
;; x should be Float32(0xCAB15D2A [Rational(-5811861), -5811861.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -5811861

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101001110101000101101011))
;; z should be -5811861

(assert (not (= y z)))
(check-sat)
(exit)
