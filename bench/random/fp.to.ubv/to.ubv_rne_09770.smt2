(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000110 #b00110100010000111010111)))
;; x should be Float32(0x431A21D7 [Rational(10101207, 65536), 154.132187])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RNE x)))
;; y should be 154

(declare-const z (_ BitVec 8))
(assert (= z #b10011010))
;; z should be 154

(assert (not (= y z)))
(check-sat)
(exit)
