(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10000101 #b11000010000110010101000)))
;; x should be Float32(0xC2E10CA8 [Rational(-1843605, 16384), -112.524719])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0011111111101000101110000000110100010100011100100101000100000010))
;; z should be 4605132985303453954

(assert (= y z))
(check-sat)
(exit)
