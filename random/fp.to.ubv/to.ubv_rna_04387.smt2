(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +inf)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0001110001001010010110111010000110001010101110000110110110100011))
;; z should be 2038542530713775523

(assert (= y z))
(check-sat)
(exit)
