(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b10111000101010001010100)))
;; x should be Float32(0x005C5454 [Rational(1512725, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000001 #b00000000000000000000000)))
;; y should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTZ x y)))
(assert (= result ((_ to_fp 8 24) #x80000000)))
(check-sat)
(exit)
