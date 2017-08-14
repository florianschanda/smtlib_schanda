(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10100110110100110111011)))
;; x should be Float32(0x4AD369BB [Rational(13855163, 2), 6927581.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x415A6D3760000000 [Rational(13855163, 2), 6927581.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010101 #b1010011011010011011101100000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
