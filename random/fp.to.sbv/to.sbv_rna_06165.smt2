(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA82A328)))
;; x should be Float32(0xCA82A328 [Rational(-4280724), -4280724.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be -4280724

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101111101010111001101100))
;; z should be -4280724

(assert (= y z))
(check-sat)
(exit)
