(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11110010 #b11110011000111111000101)))
;; x should be Float32(0xF9798FC5 [Rational(-80987369393531848653076498191745024), -80987369393531848653076498191745024.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0101011101001101011101000001001000010101000110100100111100000001))
;; z should be 6290811875518729985

(assert (= y z))
(check-sat)
(exit)
