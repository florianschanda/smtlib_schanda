(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; on high bound (exclusive)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10010000001011011010111)))
;; x should be Float32(0x004816D7 [Rational(4724439, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 590555.0 89202980794122492566142873090593446023921664.0))))
;; w should be Float32(0x004816D8 [Rational(590555, 89202980794122492566142873090593446023921664), 0.000000])

(assert (distinct x w))
(check-sat)
(exit)
