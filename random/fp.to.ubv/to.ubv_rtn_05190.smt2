(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTN -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b01001111100111000001100)))
;; x should be Float32(0xCA27CE0C [Rational(-2749315), -2749315.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTN x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1110100010100010010001000000101110110111000100101111111111001101))
;; z should be 16763035580133212109

(assert (not (= y z)))
(check-sat)
(exit)
