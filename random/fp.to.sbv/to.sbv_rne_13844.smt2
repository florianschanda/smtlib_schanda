(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11001100 #b11101111110100010101001)))
;; x should be Float32(0xE677E8A9 [Rational(-292679085906823848394752), -292679085906823848394752.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0110001000111100101111100110001011101110010101111110001100101000))
;; z should be 7078742046434386728

(assert (= y z))
(check-sat)
(exit)
