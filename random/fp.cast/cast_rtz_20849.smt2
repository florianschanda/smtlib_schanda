(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTZ conversion of Float32(+normal) -> Float16
(declare-const x Float32)
(assert (= x (fp #b0 #b00110110 #b11111001111110011000001)))
;; x should be Float32(0x1B7CFCC1 [Rational(16579777, 79228162514264337593543950336), 0.000000])

(declare-const y Float16)
(assert (= y ((_ to_fp 5 11) RTZ x)))
;; y should be Float16(+zero)

(declare-const z Float16)
(assert (= z (_ +zero 5 11)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
