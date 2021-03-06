(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00000000)))
;; x should be Float32(+zero)

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10001111111011010010111)))
;; y should be Float32(0x8047F697 [Rational(-4716183, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b01111100 #b00110100000100001101000)))
;; z should be Float32(0xBE1A0868 [Rational(-1261837, 8388608), -0.150423])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #xBE1A0868))))
(check-sat)
(exit)
