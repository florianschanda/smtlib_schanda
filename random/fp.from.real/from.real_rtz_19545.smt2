(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xBE7BE653)))
;; x should be Float32(0xBE7BE653 [Rational(-16508499, 67108864), -0.245996])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 1431270707.0 16777216000.0))))
;; w should be Float32(0x3DAEB735 [Rational(11450165, 134217728), 0.085310])

(assert (distinct x w))
(check-sat)
(exit)
