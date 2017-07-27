(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(-halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10010010 #b11111010001111000001000)))
;; x should be Float32(0xC97D1E08 [Rational(-2073537, 2), -1036768.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0xC12FA3C100000000 [Rational(-2073537, 2), -1036768.500000])

(declare-const z Float64)
(assert (= z (fp #b1 #b10000010010 #b1111101000111100000100000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
