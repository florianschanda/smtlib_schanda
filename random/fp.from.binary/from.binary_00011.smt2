(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +halfpoint)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01001000001101001000000110100000))
;; x should be 483481a0

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x483481A0 [Rational(369677, 2), 184838.500000])

(assert (not (= y (fp #b0 #b10010000 #b01101001000000110100000))))
(check-sat)
(exit)
