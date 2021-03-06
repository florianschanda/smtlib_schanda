(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ -zero 8 24)))
;; x should be Float32(-zero)

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b11011010101101000011000)))
;; y should be Float32(0x806D5A18 [Rational(-895811, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const z Float32)
(assert (= z (_ +zero 8 24)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b0 #b00000000 #b00000000000000000000000)))
(check-sat)
(exit)
