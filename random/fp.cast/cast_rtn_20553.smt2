(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+minnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTN x)))
;; y should be Float64(0x3810000000000000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #x3810000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
