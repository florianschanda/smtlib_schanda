(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11111100 #b11101100011010001110000)))
;; x should be Float32(0xFE763470 [Rational(-81815589507402181189526901182557061120), -81815589507402181189526901182557061120.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0101111100000101101110111011011011010011101000001001000101001000))
;; z should be 6847085202395664712

(assert (not (= y z)))
(check-sat)
(exit)
