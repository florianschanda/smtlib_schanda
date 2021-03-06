(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x499DF62C)))
;; x should be Float32(0x499DF62C [Rational(2588043, 2), 1294021.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b10000010100101110110100)))
;; y should be Float32(0x00414BB4 [Rational(1069805, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x0BCCBFDE)))
;; z should be Float32(0x0BCCBFDE [Rational(6709231, 85070591730234615865843651857942052864), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b0 #b00010111 #b11000001110010011111010))))
(check-sat)
(exit)
