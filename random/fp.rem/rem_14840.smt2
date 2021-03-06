(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10100111 #b00100100000111101101011)))
;; x should be Float32(0xD3920F6B [Rational(-1254647791616), -1254647791616.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000001 #b00000000000000000000000)))
;; y should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const result Float32)
(assert (= result (fp.rem x y)))
(assert (not (= result ((_ to_fp 8 24) #x80000000))))
(check-sat)
(exit)
