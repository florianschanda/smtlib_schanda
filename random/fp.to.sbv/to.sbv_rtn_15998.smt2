(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCACD90A4)))
;; x should be Float32(0xCACD90A4 [Rational(-6735954), -6735954.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -6735954

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100110010011011110101110))
;; z should be -6735954

(assert (= y z))
(check-sat)
(exit)
