(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +normal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b01010100001111010000100101000111))
;; x should be 543d0947

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x543D0947 [Rational(3247617867776), 3247617867776.000000])

(assert (not (= y (fp #b0 #b10101000 #b01111010000100101000111))))
(check-sat)
(exit)
