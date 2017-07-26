(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE -minnormal)
(declare-const x Float32)
(assert (= x (fp #b1 #b01111110 #b00000000000000000000000)))
;; x should be Float32(0xBF000000 [Rational(-1, 2), -0.500000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RNE x)))
;; y should be 0

(declare-const z (_ BitVec 8))
(assert (= z #b00000000))
;; z should be 0

(assert (= y z))
(check-sat)
(exit)
