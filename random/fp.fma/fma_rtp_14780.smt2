(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10010101100011100110100)))
;; y should be Float32(0x804AC734 [Rational(-1225165, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10001101 #b00111001000100111100100)))
;; z should be Float32(0xC69C89E4 [Rational(-2564729, 128), -20036.945312])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #xFF800000))))
(check-sat)
(exit)
