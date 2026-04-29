(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01001010001001000100101101101010))
;; x should be 4a244b6a

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x4A244B6A [Rational(5383605, 2), 2691802.500000])

(assert (not (= y (fp #b0 #b10010100 #b01001000100101101101010))))
(check-sat)
(exit)
