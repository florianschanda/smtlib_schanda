(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00011010010100001100010)))
;; x should be Float32(0xCA8D2862 [Rational(-4625457), -4625457.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be -4625457

(declare-const z (_ BitVec 32))
(assert (= z #b11111111101110010110101111001111))
;; z should be -4625457

(assert (= y z))
(check-sat)
(exit)
