(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11000010 #b00101111111000110110001)))
;; x should be Float32(0xE117F1B1 [Rational(-175179628522760044544), -175179628522760044544.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCAF8090B)))
;; y should be Float32(0xCAF8090B [Rational(-16255243, 2), -8127621.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (= result (fp #b1 #b11000010 #b00101111111000110110000)))
(check-sat)
(exit)
