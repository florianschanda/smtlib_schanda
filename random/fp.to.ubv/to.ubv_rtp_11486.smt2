(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10010100 #b00101110110110101101100)))
;; x should be Float32(0xCA176D6C [Rational(-2480987), -2480987.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b10101110111111001100011101000101))
;; z should be 2935801669

(assert (not (= y z)))
(check-sat)
(exit)
