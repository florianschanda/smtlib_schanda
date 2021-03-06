(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80800000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b11110001000110000010011)))
;; y should be Float32(0x00788C13 [Rational(7900179, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (= result (fp #b1 #b01111111 #b00001111110100111100010)))
(check-sat)
(exit)
