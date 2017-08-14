(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00111101010110000100111)))
;; x should be Float32(0x801EAC27 [Rational(-2010151, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xB7EEAC2700000000 [Rational(-2010151, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b01101111110 #b1110101011000010011100000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
