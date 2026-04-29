(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b10000000100010001100010)))
;; x should be Float32(0xCA404462 [Rational(-6300209, 2), -3150104.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 6100985613.0 2048.0))))
;; w should be Float32(0x4A35D2D4 [Rational(2978997), 2978997.000000])

(assert (distinct x w))
(check-sat)
(exit)
