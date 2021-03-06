(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b10100111011100110000110)))
;; x should be Float32(0xCA53B986 [Rational(-6937795, 2), -3468897.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F84619B)))
;; y should be Float32(NaN)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xFFB5782E)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result (fp #b1 #b11111111 #b11111111111111111111111))))
(check-sat)
(exit)
