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
(assert (= x #b11001001110110010011111000010100))
;; x should be c9d93e14

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xC9D93E14 [Rational(-3559301, 2), -1779650.500000])

(assert (= y (fp #b1 #b10010011 #b10110010011111000010100)))
(check-sat)
(exit)
