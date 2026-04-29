(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA773EDC)))
;; x should be Float32(0xCA773EDC [Rational(-4050871), -4050871.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -4050871

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110000100011000001001001))
;; z should be -4050871

(assert (= y z))
(check-sat)
(exit)
