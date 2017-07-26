(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00111111010010000110010)))
;; x should be Float32(0xCA9FA432 [Rational(-5231129), -5231129.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -5231129

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101100000010110111100111))
;; z should be -5231129

(assert (= y z))
(check-sat)
(exit)
