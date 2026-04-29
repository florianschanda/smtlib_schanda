(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10100001111010111010000)))
;; x should be Float32(0x4AD0F5D0 [Rational(6847208), 6847208.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be 6847208

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011010000111101011101000))
;; z should be 6847208

(assert (= y z))
(check-sat)
(exit)
