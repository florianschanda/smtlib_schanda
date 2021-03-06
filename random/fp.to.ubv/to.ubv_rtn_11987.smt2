(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x417A0CF6)))
;; x should be Float32(0x417A0CF6 [Rational(8193659, 524288), 15.628164])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be 15

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000001111))
;; z should be 15

(assert (= y z))
(check-sat)
(exit)
