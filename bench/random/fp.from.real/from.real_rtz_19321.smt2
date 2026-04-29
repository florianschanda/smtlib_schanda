(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10011010 #b11101111000010011110110)))
;; x should be Float32(0x4D7784F6 [Rational(259542880), 259542880.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ 259542898.0)))
;; w should be Float32(0x4D7784F7 [Rational(259542896), 259542896.000000])

(assert (distinct x w))
(check-sat)
(exit)
