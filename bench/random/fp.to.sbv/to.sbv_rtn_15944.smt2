(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00101010000010001001110)))
;; x should be Float32(0xCA95044E [Rational(-4882983), -4882983.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -4882983

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101101010111110111011001))
;; z should be -4882983

(assert (= y z))
(check-sat)
(exit)
