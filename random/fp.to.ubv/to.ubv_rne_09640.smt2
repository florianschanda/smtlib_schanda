(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01001011111110110011001)))
;; x should be Float32(0x4AA5FD99 [Rational(10878361, 2), 5439180.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be 5439180

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010100101111111011001100))
;; z should be 5439180

(assert (= y z))
(check-sat)
(exit)
