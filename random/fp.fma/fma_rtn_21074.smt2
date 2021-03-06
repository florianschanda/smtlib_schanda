(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AAC438B)))
;; x should be Float32(0x4AAC438B [Rational(11289483, 2), 5644741.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11101111 #b01100011100111011101011)))
;; y should be Float32(0x77B1CEEB [Rational(7212760460603184269348167709884416), 7212760460603184269348167709884416.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x7F800000)))
;; z should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #x7F800000))))
(check-sat)
(exit)
