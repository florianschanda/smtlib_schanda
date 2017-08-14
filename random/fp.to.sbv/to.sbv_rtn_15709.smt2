(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTN +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b11011101 #b01010011000001011111100)))
;; x should be Float32(0x6EA982FC [Rational(26230658526355450778896826368), 26230658526355450778896826368.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1010010010001101001001001010100001011110101100110110101101110011))
;; z should be -6589570374211245197

(assert (not (= y z)))
(check-sat)
(exit)
