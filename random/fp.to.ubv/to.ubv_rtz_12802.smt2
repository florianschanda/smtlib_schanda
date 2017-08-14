(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b11100110 #b11100011100101101110011)))
;; x should be Float32(0x7371CB73 [Rational(19156951649400694091350313795584), 19156951649400694091350313795584.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b10000100111110000000001010000101))
;; z should be 2230846085

(assert (= y z))
(check-sat)
(exit)
