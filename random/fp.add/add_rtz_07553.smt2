(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01110100011100111001100)))
;; x should be Float32(0xC9BA39CC [Rational(-3051123, 2), -1525561.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x800D4480)))
;; y should be Float32(0x800D4480 [Rational(-6793, 5575186299632655785383929568162090376495104), -0.000000])

(declare-const result Float32)
(assert (= result (fp.add RTZ x y)))
(assert (= result ((_ to_fp 8 24) #xC9BA39CC)))
(check-sat)
(exit)
