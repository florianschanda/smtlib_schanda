(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ -oo 8 24)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y (fp #b0 #b11111111 #b00000000000000000000000)))
;; y should be Float32(+oo)

(declare-const z Float32)
(assert (= z (fp #b0 #b10111000 #b00111101000001111101110)))
;; z should be Float32(0x5C1E83EE [Rational(178472418182955008), 178472418182955008.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b1 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
