(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010001 #b11101010110000110010000)))
;; x should be Float32(0xC8F56190 [Rational(-1005081, 2), -502540.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8045F84C)))
;; y should be Float32(0x8045F84C [Rational(-1146387, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b11111111111111111111111)))
;; z should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #x09862276))))
(check-sat)
(exit)
