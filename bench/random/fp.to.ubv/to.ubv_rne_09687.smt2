(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b00010111111110111100000)))
;; x should be Float32(0x490BFDE0 [Rational(573406), 573406.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be 573406

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000010001011111111011110))
;; z should be 573406

(assert (= y z))
(check-sat)
(exit)
