(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA119530)))
;; x should be Float32(0xCA119530 [Rational(-2385228), -2385228.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be -2385228

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110110111001101010110100))
;; z should be -2385228

(assert (= y z))
(check-sat)
(exit)
