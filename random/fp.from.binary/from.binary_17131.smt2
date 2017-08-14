(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11001001010000100000110110011000))
;; x should be c9420d98

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xC9420D98 [Rational(-1589683, 2), -794841.500000])

(assert (= y (fp #b1 #b10010010 #b10000100000110110011000)))
(check-sat)
(exit)
