(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00101110000111100010110)))
;; x should be Float32(0xCA970F16 [Rational(-4949899), -4949899.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be -4949899

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101101000111100001110101))
;; z should be -4949899

(assert (= y z))
(check-sat)
(exit)
