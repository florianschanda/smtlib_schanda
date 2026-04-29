(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5E57979F)))
;; x should be Float32(0x5E57979F [Rational(3883765065496657920), 3883765065496657920.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be 3883765065496657920

(declare-const z (_ BitVec 64))
(assert (= z #b0011010111100101111001111100000000000000000000000000000000000000))
;; z should be 3883765065496657920

(assert (= y z))
(check-sat)
(exit)
