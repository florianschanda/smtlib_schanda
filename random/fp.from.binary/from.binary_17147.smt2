(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11001001001000010011110110001000))
;; x should be c9213d88

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xC9213D88 [Rational(-1320881, 2), -660440.500000])

(assert (not (= y (fp #b1 #b10010010 #b01000010011110110001000))))
(check-sat)
(exit)
