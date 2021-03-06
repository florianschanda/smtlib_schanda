(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x003CC53F)))
;; x should be Float32(0x003CC53F [Rational(3982655, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b01001010111111000011011)))
;; y should be Float32(0x00257E1B [Rational(2457115, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RNA x y)))
(assert (= result (_ +zero 8 24)))
(check-sat)
(exit)
