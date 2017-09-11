(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x48BEC0F0)))
;; x should be Float32(0x48BEC0F0 [Rational(781327, 2), 390663.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 390664

(declare-const z Int)
(assert (= z 390664))
(assert (= y z))
