(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0057699C)))
;; x should be Float32(0x0057699C [Rational(1432167, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010100 #b11001111001000100110010)))
;; y should be Float32(0x4A679132 [Rational(7587993, 2), 3793996.500000])

(declare-const result Float32)
(assert (= result (fp.add RNA x y)))
(assert (= result (fp #b0 #b10010100 #b11001111001000100110010)))
(check-sat)
(exit)
