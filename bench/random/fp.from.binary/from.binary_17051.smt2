(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01001010101010010010101000011111))
;; x should be 4aa92a1f

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x4AA92A1F [Rational(11086367, 2), 5543183.500000])

(assert (not (= y (fp #b0 #b10010101 #b01010010010101000011111))))
(check-sat)
(exit)
