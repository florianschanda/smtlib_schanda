(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0059745F)))
;; x should be Float32(0x0059745F [Rational(5862495, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11111111 #b00000000000000000000000)))
;; y should be Float32(-oo)

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b11011010011100101000100)))
;; z should be Float32(0x806D3944 [Rational(-1789521, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result (fp #b1 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
