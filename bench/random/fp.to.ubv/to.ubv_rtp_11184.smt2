(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b11010110011110101000000)))
;; x should be Float32(0x496B3D40 [Rational(963540), 963540.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTP x)))
;; y should be 963540

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000011101011001111010100))
;; z should be 963540

(assert (= y z))
(check-sat)
(exit)
