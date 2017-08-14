(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000010 #b11100100000110011110110)))
;; x should be Float32(0x41720CF6 [Rational(7931515, 524288), 15.128164])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 15

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000001111))
;; z should be 15

(assert (= y z))
(check-sat)
(exit)
