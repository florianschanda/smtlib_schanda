(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x416A0CF6)))
;; x should be Float32(0x416A0CF6 [Rational(7669371, 524288), 14.628164])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 14

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000001110))
;; z should be 14

(assert (= y z))
(check-sat)
(exit)
