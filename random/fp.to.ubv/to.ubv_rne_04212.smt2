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
(assert (= x ((_ to_fp 8 24) #xCAC5195C)))
;; x should be Float32(0xCAC5195C [Rational(-6458542), -6458542.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1100001111101111000100110101100000100001011101110101011101111110))
;; z should be 14118524626069313406

(assert (not (= y z)))
(check-sat)
(exit)
