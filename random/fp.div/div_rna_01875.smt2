(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10000011 #b01001100001100111011011)))
;; x should be Float32(0xC1A619DB [Rational(-10885595, 524288), -20.762625])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x80000001)))
;; y should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (= result (fp #b0 #b11111111 #b00000000000000000000000)))
(check-sat)
(exit)
