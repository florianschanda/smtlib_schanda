(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01110101000000110001100)))
;; x should be Float32(0xCA3A818C [Rational(-3055715), -3055715.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -3055715

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110100010101111110011101))
;; z should be -3055715

(assert (= y z))
(check-sat)
(exit)
