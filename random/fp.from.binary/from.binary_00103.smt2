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
(assert (= x #b10000000010111111010101101010001))
;; x should be 805fab51

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x805FAB51 [Rational(-6269777, 713623846352979940529142984724747568191373312), -0.000000])

(assert (= y (fp #b1 #b00000000 #b10111111010101101010001)))
(check-sat)
(exit)
