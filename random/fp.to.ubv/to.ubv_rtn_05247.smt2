(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xF3C0ACBD)))
;; x should be Float32(0xF3C0ACBD [Rational(-30530534222815862669390240546816), -30530534222815862669390240546816.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1000111000000111100000101111100110010001101111001000101111001011))
;; z should be 10234292686626261963

(assert (not (= y z)))
(check-sat)
(exit)
