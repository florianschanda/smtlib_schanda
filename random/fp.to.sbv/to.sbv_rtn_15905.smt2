(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +ubv_8_bound)
(declare-const x Float32)
(assert (= x (fp #b0 #b10000110 #b11111111000000000000000)))
;; x should be Float32(0x437F8000 [Rational(511, 2), 255.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 255

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000011111111))
;; z should be 255

(assert (= y z))
(check-sat)
(exit)
