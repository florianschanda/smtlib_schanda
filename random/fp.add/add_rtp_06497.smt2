(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00001000010111110011010)))
;; x should be Float32(0x80042F9A [Rational(-137165, 356811923176489970264571492362373784095686656), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFFF17308)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.add RTP x y)))
(assert (= result ((_ to_fp 8 24) #xFFFFFFFF)))
(check-sat)
(exit)
