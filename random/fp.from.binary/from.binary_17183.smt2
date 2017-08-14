(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.binary -normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11110000010000000100001010000101))
;; x should be f0404285

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xF0404285 [Rational(-238006156258140161534007967744), -238006156258140161534007967744.000000])

(assert (= y (fp #b1 #b11100000 #b10000000100001010000101)))
(check-sat)
(exit)
