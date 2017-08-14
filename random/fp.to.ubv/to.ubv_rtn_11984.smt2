(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000010 #b11110100000110011110110)))
;; x should be Float32(0x417A0CF6 [Rational(8193659, 524288), 15.628164])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTN x)))
;; y should be 15

(declare-const z (_ BitVec 8))
(assert (= z #b00001111))
;; z should be 15

(assert (= y z))
(check-sat)
(exit)
