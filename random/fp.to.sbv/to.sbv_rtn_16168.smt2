(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -sbv_8_bound)
(declare-const x Float32)
(assert (= x (fp #b1 #b10000110 #b00000000000000000000000)))
;; x should be Float32(0xC3000000 [Rational(-128), -128.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RTN x)))
;; y should be -128

(declare-const z (_ BitVec 8))
(assert (= z #b10000000))
;; z should be -128

(assert (= y z))
(check-sat)
(exit)
