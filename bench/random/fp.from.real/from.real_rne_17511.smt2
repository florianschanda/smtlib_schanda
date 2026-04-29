(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11100110011110100111010)))
;; x should be Float32(0xCA733D3A [Rational(-7970461, 2), -3985230.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 967611279.0 512.0))))
;; w should be Float32(0x49E6B24E [Rational(7559463, 4), 1889865.750000])

(assert (distinct x w))
(check-sat)
(exit)
