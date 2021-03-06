(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8077866F)))
;; x should be Float32(0x8077866F [Rational(-7833199, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010101 #b01111111111101101011011)))
;; y should be Float32(0xCABFFB5B [Rational(-12581723, 2), -6290861.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80577FFC)))
;; z should be Float32(0x80577FFC [Rational(-1433599, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b0 #b00010111 #b01100110100010101001110))))
(check-sat)
(exit)
