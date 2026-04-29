(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00110110 #b11111001111110011000001)))
;; x should be Float32(0x1B7CFCC1 [Rational(16579777, 79228162514264337593543950336), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTZ x)))
;; y should be Float64(0x3B6F9F9820000000 [Rational(16579777, 79228162514264337593543950336), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01110110110 #b1111100111111001100000100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
