(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA3A818A)))
;; x should be Float32(0xCA3A818A [Rational(-6111429, 2), -3055714.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -3055714

(declare-const z (_ BitVec 32))
(assert (= z #b11111111110100010101111110011110))
;; z should be -3055714

(assert (= y z))
(check-sat)
(exit)
