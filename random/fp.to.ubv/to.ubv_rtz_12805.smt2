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

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1100110100111000001001101111111011010111100100101100000111000001))
;; z should be 14787612252451291585

(assert (not (= y z)))
(check-sat)
(exit)
