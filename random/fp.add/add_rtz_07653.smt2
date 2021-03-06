(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807FFFFF)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x8005A1F4)))
;; y should be Float32(0x8005A1F4 [Rational(-92285, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTZ x y)))
(assert (not (= result (fp #b1 #b00000001 #b00001011010000111110011))))
(check-sat)
(exit)
