(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b11010001110011000001111)))
;; x should be Float32(0xCAE8E60F [Rational(-15263247, 2), -7631623.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 315103575.0 256.0))))
;; w should be Float32(0x499640CB [Rational(9846987, 8), 1230873.375000])

(assert (distinct x w))
(check-sat)
(exit)
