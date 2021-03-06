(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00111010 #b10111111110010000100111)))
;; x should be Float32(0x9D5FE427 [Rational(-14672935, 4951760157141521099596496896), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80000000)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x490BA9D8)))
;; z should be Float32(0x490BA9D8 [Rational(1144123, 2), 572061.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #x490BA9D8))))
(check-sat)
(exit)
