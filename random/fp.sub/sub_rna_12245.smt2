(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF3DACF7)))
;; x should be Float32(0xFF3DACF7 [Rational(-252122176018189192293521494732678627328), -252122176018189192293521494732678627328.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00000000000000000000000)))
;; y should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.sub RNA x y)))
(assert (not (= result ((_ to_fp 8 24) #xFF3DACF7))))
(check-sat)
(exit)
