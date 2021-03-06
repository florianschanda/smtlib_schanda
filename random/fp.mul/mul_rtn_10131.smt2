(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b11111011010111101010110)))
;; x should be Float32(0xCA7DAF56 [Rational(-8312747, 2), -4156373.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b11011100 #b00100110000001011101110)))
;; y should be Float32(0x6E1302EE [Rational(11374459554649969334113271808), 11374459554649969334113271808.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTN x y)))
(assert (not (= result ((_ to_fp 8 24) #xF911AE96))))
(check-sat)
(exit)
