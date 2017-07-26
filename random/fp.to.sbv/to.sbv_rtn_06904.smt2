(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b01111110 #b00000111010101110001100)))
;; x should be Float32(0xBF03AB8C [Rational(-2157283, 4194304), -0.514336])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -1

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111111111111111111111111))
;; z should be -1

(assert (= y z))
(check-sat)
(exit)
