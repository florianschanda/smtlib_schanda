(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01110101000000110001000)))
;; x should be Float32(0xCA3A8188 [Rational(-3055714), -3055714.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -3055714

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110100010101111110011110))
;; z should be -3055714

(assert (= y z))
(check-sat)
(exit)
