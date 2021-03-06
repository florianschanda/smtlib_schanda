(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01011001111110010100001)))
;; x should be Float32(0x002CFCA1 [Rational(2948257, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00000000000000000000000)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b10110010000000010001000)))
;; z should be Float32(0x00590088 [Rational(729105, 89202980794122492566142873090593446023921664), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (fp #b0 #b00000000 #b10110010000000010001000)))
(check-sat)
(exit)
