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
(assert (= x (fp #b1 #b01110000 #b01100011110000010100000)))
;; x should be Float32(0xB831E0A0 [Rational(-364293, 8589934592), -0.000042])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1111100100000000010011000001000101011110011000010101100010100100))
;; z should be 17942424552925649060

(assert (= y z))
(check-sat)
(exit)
