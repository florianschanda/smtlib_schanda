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
(assert (= x (fp #b1 #b11001101 #b00010100111100101010111)))
;; x should be Float32(0xE68A7957 [Rational(-326962449839805597483008), -326962449839805597483008.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b10001011110100110011001101000110))
;; z should be 2345874246

(assert (= y z))
(check-sat)
(exit)
