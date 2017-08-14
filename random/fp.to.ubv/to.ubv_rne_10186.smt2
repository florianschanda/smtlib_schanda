(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10111001 #b11011101100000100101101)))
;; x should be Float32(0xDCEEC12D [Rational(-537627547798601728), -537627547798601728.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1110011110111110110101101100110111110111000111010000001100110110))
;; z should be 16699020648438891318

(assert (not (= y z)))
(check-sat)
(exit)
