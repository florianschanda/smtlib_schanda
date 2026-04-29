(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xBF00000D)))
;; x should be Float32(0xBF00000D [Rational(-8388621, 16777216), -0.500001])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RTN x)))
;; y should be -1

(declare-const z (_ BitVec 8))
(assert (= z #b11111111))
;; z should be -1

(assert (= y z))
(check-sat)
(exit)
