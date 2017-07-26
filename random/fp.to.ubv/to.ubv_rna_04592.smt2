(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xE9EE07B6)))
;; x should be Float32(0xE9EE07B6 [Rational(-35970094867635405779369984), -35970094867635405779369984.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b00000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
