(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary +subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000000001011010110111101100011))
;; x should be 2d6f63

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x002D6F63 [Rational(2977635, 713623846352979940529142984724747568191373312), 0.000000])

(assert (= y (fp #b0 #b00000000 #b01011010110111101100011)))
(check-sat)
(exit)
