(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +inf)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b00000000000000000000000)))
;; x should be Float32(+oo)

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0111001011110010011001111111001110100110010001011111000101010111))
;; z should be 8282796960852078935

(assert (not (= y z)))
(check-sat)
(exit)
