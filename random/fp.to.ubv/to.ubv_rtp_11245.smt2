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
(assert (= x ((_ to_fp 8 24) #x7B582C81)))
;; x should be Float32(0x7B582C81 [Rational(1122438767899047781360790453337718784), 1122438767899047781360790453337718784.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b0100110010101001111010100111001011011100100110010101100010000110))
;; z should be 5524204196994832518

(assert (not (= y z)))
(check-sat)
(exit)
