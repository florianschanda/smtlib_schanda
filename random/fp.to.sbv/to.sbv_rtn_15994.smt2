(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCACD90A5)))
;; x should be Float32(0xCACD90A5 [Rational(-13471909, 2), -6735954.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be -6735955

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100110010011011110101101))
;; z should be -6735955

(assert (= y z))
(check-sat)
(exit)
