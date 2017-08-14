(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(+normal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x29871A76)))
;; x should be Float32(0x29871A76 [Rational(4427067, 73786976294838206464), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0x3D30E34EC0000000 [Rational(4427067, 73786976294838206464), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01111010011 #b0000111000110100111011000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
