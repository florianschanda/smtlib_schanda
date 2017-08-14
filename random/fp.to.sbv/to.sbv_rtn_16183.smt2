(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -subnormal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00000100100010100110110)))
;; x should be Float32(0x80024536 [Rational(-74395, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -1

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111111111111111111111111))
;; z should be -1

(assert (= y z))
(check-sat)
(exit)
