(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b11010000 #b11111000101110011101001)))
;; x should be Float32(0x687C5CE9 [Rational(4767000974229370839236608), 4767000974229370839236608.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b11010000110100100011100010111101))
;; z should be 3503438013

(assert (not (= y z)))
(check-sat)
(exit)
