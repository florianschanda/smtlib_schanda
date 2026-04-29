(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01001001110011001001101011110100))
;; x should be 49cc9af4

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x49CC9AF4 [Rational(3352253, 2), 1676126.500000])

(assert (not (= y (fp #b0 #b10010011 #b10011001001101011110100))))
(check-sat)
(exit)
