(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA -maxnormal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11111110 #b11111111111111111111111)))
;; x should be Float32(0xFF7FFFFF [Rational(-340282346638528859811704183484516925440), -340282346638528859811704183484516925440.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b01000110000010111001001000111110))
;; z should be 1175163454

(assert (not (= y z)))
(check-sat)
(exit)
