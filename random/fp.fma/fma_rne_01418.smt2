(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0x7F7FFFFF [Rational(340282346638528859811704183484516925440), 340282346638528859811704183484516925440.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x806A1A82)))
;; y should be Float32(0x806A1A82 [Rational(-3476801, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xFF800000)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b1 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
