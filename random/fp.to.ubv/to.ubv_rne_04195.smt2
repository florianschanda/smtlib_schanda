(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b10111110111101111101000)))
;; x should be Float32(0xC9DF7BE8 [Rational(-1830781), -1830781.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0101001011100001001011111101000111101100011001010000100111011100))
;; z should be 5972107159530703324

(assert (= y z))
(check-sat)
(exit)
