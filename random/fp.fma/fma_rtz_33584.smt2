(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00110011110000001100101)))
;; x should be Float32(0x8019E065 [Rational(-1695845, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (_ +zero 8 24)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z (fp #b1 #b10010101 #b11101011011100111001101)))
;; z should be Float32(0xCAF5B9CD [Rational(-16103885, 2), -8051942.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result ((_ to_fp 8 24) #xCAF5B9CD)))
(check-sat)
(exit)
