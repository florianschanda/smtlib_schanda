(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11100000 #b11000111000011011011101)))
;; x should be Float32(0xF06386DD [Rational(-281664547729065620406112616448), -281664547729065620406112616448.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA9388B9)))
;; y should be Float32(0xCA9388B9 [Rational(-9668793, 2), -4834396.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11111111 #b00000000000000000000000)))
;; z should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #xFF800000))))
(check-sat)
(exit)
