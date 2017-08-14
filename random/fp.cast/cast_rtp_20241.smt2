(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RTP conversion of Float32(+halfpoint) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A5E398E)))
;; x should be Float32(0x4A5E398E [Rational(7281863, 2), 3640931.500000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RTP x)))
;; y should be Float64(0x414BC731C0000000 [Rational(7281863, 2), 3640931.500000])

(declare-const z Float64)
(assert (= z (fp #b0 #b10000010100 #b1011110001110011000111000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
