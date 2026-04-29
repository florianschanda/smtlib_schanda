(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA6BF4B2)))
;; x should be Float32(0xCA6BF4B2 [Rational(-7731801, 2), -3865900.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -3865901

(declare-const z (_ BitVec 32))
(assert (= z #b11111111110001010000001011010011))
;; z should be -3865901

(assert (= y z))
(check-sat)
(exit)
