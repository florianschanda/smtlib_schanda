(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNE conversion of Float32(-subnormal) -> Float64
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x804D76E1)))
;; x should be Float32(0x804D76E1 [Rational(-5076705, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNE x)))
;; y should be Float64(0xB8035DB840000000 [Rational(-5076705, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float64)
(assert (= z (fp #b1 #b01110000000 #b0011010111011011100001000000000000000000000000000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
