(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10110000 #b01110110111010110111101)))
;; x should be Float32(0x583B75BD [Rational(824457425846272), 824457425846272.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 824457425846272

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000010111011011101011011110100000000000000000000000000))
;; z should be 824457425846272

(assert (= y z))
(check-sat)
(exit)
