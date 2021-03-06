(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ +zero 8 24)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b01011100110110110100101)))
;; y should be Float32(0x4AAE6DA5 [Rational(11431333, 2), 5715666.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x0079516C)))
;; z should be Float32(0x0079516C [Rational(1987675, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b0 #b00000000 #b11110010101000101101100))))
(check-sat)
(exit)
