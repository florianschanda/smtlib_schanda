(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00111001010111010010100)))
;; x should be Float32(0xCA9CAE94 [Rational(-5134154), -5134154.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTZ x)))
;; y should be -5134154

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101100011010100010110110))
;; z should be -5134154

(assert (= y z))
(check-sat)
(exit)
