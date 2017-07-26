(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10011110 #b00101110001001011001010)))
;; x should be Float32(0xCF1712CA [Rational(-2534590976), -2534590976.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -2534590976

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111101101000111011010011011000000000))
;; z should be -2534590976

(assert (= y z))
(check-sat)
(exit)
