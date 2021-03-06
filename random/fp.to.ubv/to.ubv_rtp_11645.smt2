(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP -normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b01111101 #b11111111111111111110010)))
;; x should be Float32(0x3EFFFFF2 [Rational(8388601, 16777216), 0.500000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTP x)))
;; y should be 1

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000001))
;; z should be 1

(assert (= y z))
(check-sat)
(exit)
