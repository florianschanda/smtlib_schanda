(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTZ -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xD453FCAD)))
;; x should be Float32(0xD453FCAD [Rational(-3641909182464), -3641909182464.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b11010010101010110101011011100001))
;; z should be -760523039

(assert (= y z))
(check-sat)
(exit)
