(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b10100111101000010000101100101101))
;; x should be a7a10b2d

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xA7A10B2D [Rational(-10554157, 2361183241434822606848), -0.000000])

(assert (not (= y (fp #b1 #b01001111 #b01000010000101100101101))))
(check-sat)
(exit)
