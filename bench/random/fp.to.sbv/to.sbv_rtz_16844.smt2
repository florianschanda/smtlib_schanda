(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00111001010111010010010)))
;; x should be Float32(0xCA9CAE92 [Rational(-5134153), -5134153.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be -5134153

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101100011010100010110111))
;; z should be -5134153

(assert (= y z))
(check-sat)
(exit)
