(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b01100010101110100101011)))
;; x should be Float32(0xCAB15D2B [Rational(-11623723, 2), -5811861.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be -5811861

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101001110101000101101011))
;; z should be -5811861

(assert (not (= y z)))
(check-sat)
(exit)
