(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00101110000000111001101)))
;; x should be Float32(0x4A9701CD [Rational(9896397, 2), 4948198.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNE x)))
;; y should be 4948198

(declare-const z (_ BitVec 32))
(assert (= z #b00000000010010111000000011100110))
;; z should be 4948198

(assert (= y z))
(check-sat)
(exit)
