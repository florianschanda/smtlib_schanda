(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10000000000001101100110010000111))
;; x should be 8006cc87

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x8006CC87 [Rational(-445575, 713623846352979940529142984724747568191373312), -0.000000])

(assert (= y (fp #b1 #b00000000 #b00001101100110010000111)))
(check-sat)
(exit)
