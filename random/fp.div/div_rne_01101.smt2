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
(assert (= y (fp #b0 #b00000000 #b10111100100100000110000)))
;; y should be Float32(0x005E4830 [Rational(386179, 44601490397061246283071436545296723011960832), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNE x y)))
(assert (= result (fp #b1 #b01111111 #b01011011100011011001100)))
(check-sat)
(exit)
