(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11001010 #b00101101010100101101010)))
;; x should be Float32(0xE516A96A [Rational(-44467506892741982289920), -44467506892741982289920.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b11000010000011110000110100110010))
;; z should be -1039200974

(assert (= y z))
(check-sat)
(exit)
