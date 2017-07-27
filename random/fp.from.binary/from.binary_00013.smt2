(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01001001011111010000110111111000))
;; x should be 497d0df8

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x497D0DF8 [Rational(2073023, 2), 1036511.500000])

(assert (= y (fp #b0 #b10010010 #b11111010000110111111000)))
(check-sat)
(exit)
