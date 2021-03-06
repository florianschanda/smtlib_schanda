(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA80D391)))
;; x should be Float32(0xCA80D391 [Rational(-8442769, 2), -4221384.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFF800000)))
;; y should be Float32(-oo)

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (not (= result (fp #b1 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
