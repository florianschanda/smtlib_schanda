(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNA +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b0 #b11100001 #b01110101011010111101011)))
;; x should be Float32(0x70BAB5EB [Rational(462273097249951240240450502656), 462273097249951240240450502656.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1011010110111110101010001010110000100001110111010000000000100101))
;; z should be 13096090223695953957

(assert (not (= y z)))
(check-sat)
(exit)
