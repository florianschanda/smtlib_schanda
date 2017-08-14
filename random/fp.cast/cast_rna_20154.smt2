(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00011111011111010011101)))
;; x should be Float32(0x800FBE9D [Rational(-1031837, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xB7DF7D3A00000000 [Rational(-1031837, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xB7DF7D3A00000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
