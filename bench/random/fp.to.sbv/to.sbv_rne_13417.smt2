(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01110010100110001111001)))
;; x should be Float32(0x4AB94C79 [Rational(12143737, 2), 6071868.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 6071868

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010111001010011000111100))
;; z should be 6071868

(assert (not (= y z)))
(check-sat)
(exit)
