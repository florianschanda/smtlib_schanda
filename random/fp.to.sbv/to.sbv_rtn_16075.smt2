(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11011110 #b11100010010001001110100)))
;; x should be Float32(0xEF712274 [Rational(-74627538639323071833457033216), -74627538639323071833457033216.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0101111101100111011010100011010010110010101010011011000100110001))
;; z should be 6874580130772660529

(assert (= y z))
(check-sat)
(exit)
