(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10001111 #b00100010001011000000000)))
;; x should be Float32(0xC7911600 [Rational(-74284), -74284.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be -74284

(declare-const z (_ BitVec 32))
(assert (= z #b11111111111111101101110111010100))
;; z should be -74284

(assert (not (= y z)))
(check-sat)
(exit)
