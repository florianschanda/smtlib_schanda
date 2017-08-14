(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary +subnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b00000000011001011110001111111000))
;; x should be 65e3f8

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x0065E3F8 [Rational(834687, 89202980794122492566142873090593446023921664), 0.000000])

(assert (not (= y (fp #b0 #b00000000 #b11001011110001111111000))))
(check-sat)
(exit)
