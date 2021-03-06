(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10011001 #b01111001011001000001111)))
;; x should be Float32(0xCCBCB20F [Rational(-98930808), -98930808.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC939C238)))
;; y should be Float32(0xC939C238 [Rational(-1521735, 2), -760867.500000])

(declare-const z Float32)
(assert (= z (fp #b1 #b00000000 #b11111111111111111111111)))
;; z should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #x5688EBD5)))
(check-sat)
(exit)
