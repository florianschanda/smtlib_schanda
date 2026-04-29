(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10001000 #b10011011011110010001001)))
;; x should be Float32(0xC44DBC89 [Rational(-13483145, 16384), -822.945862])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1010111100110101110011101110101111010100100000010001010000101111))
;; z should be 12625224642680919087

(assert (not (= y z)))
(check-sat)
(exit)
