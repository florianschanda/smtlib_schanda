(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b01111111 #b00011011101101101001111)))
;; x should be Float32(0x3F8DDB4F [Rational(9296719, 8388608), 1.108255])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x3FF1BB69E0000000 [Rational(9296719, 8388608), 1.108255])

(declare-const z Float64)
(assert (= z (fp #b0 #b01111111111 #b0001101110110110100111100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
