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
(assert (= x #b11001010111100000101010000101101))
;; x should be caf0542d

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xCAF0542D [Rational(-15750189, 2), -7875094.500000])

(assert (= y (fp #b1 #b10010101 #b11100000101010000101101)))
(check-sat)
(exit)
