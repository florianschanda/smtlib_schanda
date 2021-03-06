(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80000001)))
;; x should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b00010010111001010001111)))
;; y should be Float32(0x4A89728F [Rational(9007759, 2), 4503879.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010100 #b00100101101111000101010)))
;; z should be Float32(0x4A12DE2A [Rational(4812565, 2), 2406282.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x4A12DE29))))
(check-sat)
(exit)
