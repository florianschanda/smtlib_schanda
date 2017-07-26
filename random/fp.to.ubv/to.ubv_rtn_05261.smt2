(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN -sbv_8_bound)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10000110 #b00000000000000000000000)))
;; x should be Float32(0xC3000000 [Rational(-128), -128.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b10000010010101101010110111101110))
;; z should be 2186718702

(assert (not (= y z)))
(check-sat)
(exit)
