(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10111110010101010011110)))
;; x should be Float32(0xCADF2A9E [Rational(-7312719), -7312719.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be -7312719

(declare-const z (_ BitVec 32))
(assert (= z #b11111111100100000110101010110001))
;; z should be -7312719

(assert (= y z))
(check-sat)
(exit)
