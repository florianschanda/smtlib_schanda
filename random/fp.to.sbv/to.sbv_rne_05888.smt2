(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01100011000101111010100)))
;; x should be Float32(0xCA318BD4 [Rational(-2908917), -2908917.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be -2908917

(declare-const z (_ BitVec 32))
(assert (= z #b11111111110100111001110100001011))
;; z should be -2908917

(assert (not (= y z)))
(check-sat)
(exit)
