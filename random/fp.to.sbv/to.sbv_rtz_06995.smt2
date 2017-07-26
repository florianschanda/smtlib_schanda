(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ +halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11000001101110010010101)))
;; x should be Float32(0x4AE0DC95 [Rational(14736533, 2), 7368266.500000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (= z #b11000010))
;; z should be -62

(assert (not (= y z)))
(check-sat)
(exit)
