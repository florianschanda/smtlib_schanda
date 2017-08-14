(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(+subnormal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b01011001111010001001011)))
;; x should be Float32(0x002CF44B [Rational(2946123, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0x37F67A2580000000 [Rational(2946123, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float64)
(assert (= z (fp #b0 #b01101111111 #b0110011110100010010110000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
