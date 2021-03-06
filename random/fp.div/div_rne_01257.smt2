(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x801CB64B)))
;; x should be Float32(0x801CB64B [Rational(-1881675, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10100101 #b00101100111011111110010)))
;; y should be Float32(0xD29677F2 [Rational(-323128721408), -323128721408.000000])

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (not (= result ((_ to_fp 8 24) #x00000000))))
(check-sat)
(exit)
