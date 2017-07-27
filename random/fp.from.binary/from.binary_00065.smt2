(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11001010111111111101000010000101))
;; x should be caffd085

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xCAFFD085 [Rational(-16765061, 2), -8382530.500000])

(assert (not (= y (fp #b1 #b10010101 #b11111111101000010000101))))
(check-sat)
(exit)
