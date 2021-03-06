(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ NaN 8 24)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (fp #b0 #b00111000 #b01000111001010111101110)))
;; y should be Float32(0x1C2395EE [Rational(5360375, 9903520314283042199192993792), 0.000000])

(declare-const z Float32)
(assert (= z (_ +oo 8 24)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b1 #b11111111 #b11111111111111111111111))))
(check-sat)
(exit)
