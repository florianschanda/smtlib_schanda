(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b00011110011011001111000)))
;; x should be Float32(0xC98F3678 [Rational(-1173199), -1173199.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be -1173199

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111111011100001100100110001))
;; z should be -1173199

(assert (= y z))
(check-sat)
(exit)
