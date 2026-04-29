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
(assert (= x #b11001001111011100110001010000100))
;; x should be c9ee6284

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xC9EE6284 [Rational(-3905697, 2), -1952848.500000])

(assert (= y (fp #b1 #b10010011 #b11011100110001010000100)))
(check-sat)
(exit)
