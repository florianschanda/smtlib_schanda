(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b01010101 #b11010011110101010011101)))
;; x should be Float32(0x2AE9EA9D [Rational(15329949, 36893488147419103232), 0.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTP x)))
;; y should be 1

(declare-const z (_ BitVec 8))
(assert (= z #b00000001))
;; z should be 1

(assert (= y z))
(check-sat)
(exit)
