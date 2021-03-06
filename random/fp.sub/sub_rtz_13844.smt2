(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10000001 #b00010100001000001101000)))
;; y should be Float32(0xC08A1068 [Rational(-1131021, 262144), -4.314503])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (not (= result (fp #b0 #b10000001 #b00010100001000001101000))))
(check-sat)
(exit)
