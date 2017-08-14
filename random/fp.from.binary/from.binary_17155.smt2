(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.from.binary -maxnormal)
;; binary interchange -> float
(declare-const x (_ BitVec 32))
(assert (= x #b11111111011111111111111111111111))
;; x should be ff7fffff

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(assert (not (= y (fp #b1 #b11111110 #b11111111111111111111111))))
(check-sat)
(exit)
