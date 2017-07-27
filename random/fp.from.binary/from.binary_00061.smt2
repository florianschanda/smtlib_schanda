(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11001010100000100000000000011011))
;; x should be ca82001b

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xCA82001B [Rational(-8519707, 2), -4259853.500000])

(assert (not (= y (fp #b1 #b10010101 #b00000100000000000011011))))
(check-sat)
(exit)
