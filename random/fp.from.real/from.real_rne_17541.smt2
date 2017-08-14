(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010011 #b01110010011010101011100)))
;; x should be Float32(0xC9B9355C [Rational(-3034455, 2), -1517227.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 14231678731.0 32768.0))))
;; w should be Float32(0x48D4118C [Rational(3474531, 8), 434316.375000])

(assert (distinct x w))
(check-sat)
(exit)
