(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01001010100110001011011111101011))
;; x should be 4a98b7eb

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x4A98B7EB [Rational(10008555, 2), 5004277.500000])

(assert (not (= y (fp #b0 #b10010101 #b00110001011011111101011))))
(check-sat)
(exit)
