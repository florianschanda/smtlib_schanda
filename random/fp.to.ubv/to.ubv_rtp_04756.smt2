(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x7AE583BB)))
;; x should be Float32(0x7AE583BB [Rational(595853895964472031595075371014291456), 595853895964472031595075371014291456.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0110001001100001000100100101101000101010010011010110010001011111))
;; z should be 7088967466923943007

(assert (= y z))
(check-sat)
(exit)
