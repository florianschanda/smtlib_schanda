(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807FFFFF)))
;; x should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00000000000000000000001)))
;; y should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b11111111 #b00101011001011101010001)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (fp #b1 #b11111111 #b11111111111111111111111)))
(check-sat)
(exit)
