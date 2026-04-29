(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01001000100100101111000001010000))
;; x should be 4892f050

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x4892F050 [Rational(601861, 2), 300930.500000])

(assert (not (= y (fp #b0 #b10010001 #b00100101111000001010000))))
(check-sat)
(exit)
