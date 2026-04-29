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
(assert (= x (fp #b1 #b11011000 #b11010111111000001110110)))
;; x should be Float32(0xEC6BF076 [Rational(-1140932449124509074537316352), -1140932449124509074537316352.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1011111111101100110011111101110110010101111100010110110110100111))
;; z should be 13829657106358300071

(assert (not (= y z)))
(check-sat)
(exit)
