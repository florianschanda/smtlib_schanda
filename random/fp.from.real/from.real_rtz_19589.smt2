(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10000110001101100011000)))
;; x should be Float32(0x80431B18 [Rational(-549731, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 4903764650317167695235754749496554915326745209811169.0 795717178255658627448611597034913344160729841275756347904742363029055195220053400852889600.0)))))
;; w should be Float32(0x80431B18 [Rational(-549731, 89202980794122492566142873090593446023921664), -0.000000])

(assert (= x w))
(check-sat)
(exit)
