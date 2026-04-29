(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTZ +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b11001010 #b00100000010101111110100)))
;; x should be Float32(0x65102BF4 [Rational(42551972848833979744256), 42551972848833979744256.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTZ x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1101011000110001101101111100101110010101011001110111110101101100))
;; z should be 15434319482988232044

(assert (not (= y z)))
(check-sat)
(exit)
