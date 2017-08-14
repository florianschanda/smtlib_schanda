(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9A21528)))
;; x should be Float32(0xC9A21528 [Rational(-1327781), -1327781.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b00111011010010001010001110001000))
;; z should be 994616200

(assert (= y z))
(check-sat)
(exit)
