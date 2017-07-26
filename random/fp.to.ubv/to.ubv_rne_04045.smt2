(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00110011001010111110010)))
;; x should be Float32(0x4A9995F2 [Rational(5032697), 5032697.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNE x)))
;; y should be 5032697

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010011001100101011111001))
;; z should be 5032697

(assert (= y z))
(check-sat)
(exit)
