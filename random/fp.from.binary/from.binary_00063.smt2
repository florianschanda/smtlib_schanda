(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11001010100111100010111100011011))
;; x should be ca9e2f1b

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xCA9E2F1B [Rational(-10366747, 2), -5183373.500000])

(assert (not (= y (fp #b1 #b10010101 #b00111100010111100011011))))
(check-sat)
(exit)
