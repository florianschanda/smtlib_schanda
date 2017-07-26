(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x6C31B7E4)))
;; x should be Float32(0x6C31B7E4 [Rational(859393075983213259099471872), 859393075983213259099471872.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1011110000101111001101000101001111001111101001000111000111010011))
;; z should be -4886629536103108141

(assert (not (= y z)))
(check-sat)
(exit)
