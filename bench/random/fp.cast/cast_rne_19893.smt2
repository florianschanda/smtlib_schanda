(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01001011110010101101100)))
;; x should be Float32(0x8025E56C [Rational(-620891, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xB7F2F2B600000000 [Rational(-620891, 178405961588244985132285746181186892047843328), -0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xB7F2F2B600000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
