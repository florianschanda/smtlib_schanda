(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.from.int RTZ precise_int)
(declare-const x Int)
(assert (= x 11458300))
(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) x)))
;; y should be Float32(0x4B2ED6FC [Rational(11458300), 11458300.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010110 #b01011101101011011111100)))
(assert (= y z))
