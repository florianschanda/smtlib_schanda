(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAD9DF12)))
;; x should be Float32(0xCAD9DF12 [Rational(-7139209), -7139209.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0110011010100111010010010110001001001110000101010110110110011000))
;; z should be 7396961599544978840

(assert (= y z))
(check-sat)
(exit)
