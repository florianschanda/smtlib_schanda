(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00000000000000000000000)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC9F2BDD4)))
;; y should be Float32(0xC9F2BDD4 [Rational(-3977077, 2), -1988538.500000])

(declare-const result Float32)
(assert (= result (fp.mul RTN x y)))
(assert (not (= result ((_ to_fp 8 24) #x80000000))))
(check-sat)
(exit)
