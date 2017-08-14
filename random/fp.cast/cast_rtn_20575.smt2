(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTN conversion of Float32(+normal) -> Float128
(declare-const x Float32)
(assert (= x (fp #b0 #b10110000 #b10011110110011100001010)))
;; x should be Float32(0x584F670A [Rational(912165825413120), 912165825413120.000000])

(declare-const y Float128)
(assert (= y ((_ to_fp 15 113) RTN x)))
;; y should be Float128(0x40309ECE140000000000000000000000 [Rational(912165825413120), 912165825413120.000000])

(declare-const z Float128)
(assert (= z (fp #b0 #b100000000110000 #b1001111011001110000101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
