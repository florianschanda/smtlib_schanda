(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10000100000110011001100)))
;; x should be Float32(0x80420CCC [Rational(-1082163, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC95E1CF8)))
;; y should be Float32(0xC95E1CF8 [Rational(-1819551, 2), -909775.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00228824)))
;; z should be Float32(0x00228824 [Rational(565769, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x09E53A52))))
(check-sat)
(exit)
